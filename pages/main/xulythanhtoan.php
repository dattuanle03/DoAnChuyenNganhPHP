<?php
    session_start();
    include("../../admin/config/config.php");
    // require("../../mail/sendmail.php");
    require("../../carbon/autoload.php");
    require_once('config_vnpay.php');
    use Carbon\Carbon;
    use Carbon\CarbonInterval;

    $now = Carbon::now('Asia/Ho_Chi_Minh');
    $id_khachhang = $_SESSION['id_khachhang'];
    $code_order = rand(0,9999);
    $cart_payment = $_POST['payment'];
    //lay id thong tin van chuyen
    $sql_get_vanchuyen = mysqli_query($mysqli, "SELECT * FROM tbl_shipping WHERE id_dangky='$id_khachhang' LIMIT 1");
    $row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);
    $id_shipping = $row_get_vanchuyen['id_shipping'];
    $tongtien = 0;
    foreach($_SESSION['cart'] as $key => $value){
        $thanhtien = $value['soluong'] * $value['giasp'];
        $tongtien += $thanhtien;
    }   

    if($cart_payment =='tienmat' || $cart_payment =='chuyenkhoan'){
        $insert_cart = "INSERT INTO tbl_cart(id_khachhang,code_cart,cart_status,cart_date,cart_payment,cart_shipping) 
        VALUE('".$id_khachhang."','".$code_order."',1,'".$now."','".$cart_payment."','".$id_shipping."')";
        $cart_query = mysqli_query($mysqli,$insert_cart);
        //them gio hang chi tiet
        foreach($_SESSION['cart'] as $key => $value){
            $id_sanpham = $value['id'];
            $soluong = $value['soluong'];
            $insert_order_details = "INSERT INTO tbl_cart_details(id_sanpham,code_cart,soluongmua) 
            VALUE('".$id_sanpham."','".$code_order."','".$soluong."')";
            mysqli_query($mysqli,$insert_order_details);
        }      
        header('Location:../../index.php?quanly=camon');

    }elseif($cart_payment =='VNPAY') {
        //tich hop thanh toan vnpay
        $vnp_TxnRef = $code_order; //Mã đơn hàng. Trong thực tế Merchant cần insert đơn hàng vào DB và gửi mã này sang VNPAY
        $vnp_OrderInfo = 'Thanh toán hóa đơn đặt tại web';
        $vnp_OrderType ='billpayment';
        $vnp_Amount = $tongtien * 100;
        $vnp_Locale = 'vn';
        $vnp_BankCode = 'NCB';
        $vnp_IpAddr = $_SERVER['REMOTE_ADDR'];

        $vnp_ExpireDate = $expire;

        $inputData = array(
            "vnp_Version" => "2.1.0",
            "vnp_TmnCode" => $vnp_TmnCode,
            "vnp_Amount" => $vnp_Amount,
            "vnp_Command" => "pay",
            "vnp_CreateDate" => date('YmdHis'),
            "vnp_CurrCode" => "VND",
            "vnp_IpAddr" => $vnp_IpAddr,
            "vnp_Locale" => $vnp_Locale,
            "vnp_OrderInfo" => $vnp_OrderInfo,
            "vnp_OrderType" => $vnp_OrderType,
            "vnp_ReturnUrl" => $vnp_Returnurl,
            "vnp_TxnRef" => $vnp_TxnRef,
            "vnp_ExpireDate"=>$vnp_ExpireDate

        );
        
        if (isset($vnp_BankCode) && $vnp_BankCode != "") {
            $inputData['vnp_BankCode'] = $vnp_BankCode;
        }
        // if (isset($vnp_Bill_State) && $vnp_Bill_State != "") {
        //     $inputData['vnp_Bill_State'] = $vnp_Bill_State;
        // }
        
        //var_dump($inputData);
        ksort($inputData);
        $query = "";
        $i = 0;
        $hashdata = "";
        foreach ($inputData as $key => $value) {
            if ($i == 1) {
                $hashdata .= '&' . urlencode($key) . "=" . urlencode($value);
            } else {
                $hashdata .= urlencode($key) . "=" . urlencode($value);
                $i = 1;
            }
            $query .= urlencode($key) . "=" . urlencode($value) . '&';
        }
        
        $vnp_Url = $vnp_Url . "?" . $query;
        if (isset($vnp_HashSecret)) {
            $vnpSecureHash =   hash_hmac('sha512', $hashdata, $vnp_HashSecret);//  
            $vnp_Url .= 'vnp_SecureHash=' . $vnpSecureHash;
        }
        $returnData = array('code' => '00'
            , 'message' => 'success'
            , 'data' => $vnp_Url);
            if (isset($_POST['redirect'])) {
                $_SESSION['code_cart'] = $code_order;

                $insert_cart = "INSERT INTO tbl_cart(id_khachhang,code_cart,cart_status,cart_date,cart_payment,cart_shipping) 
                VALUE('".$id_khachhang."','".$code_order."',1,'".$now."','".$cart_payment."','".$id_shipping."')";
                $cart_query = mysqli_query($mysqli,$insert_cart);
                //them gio hang chi tiet
                foreach($_SESSION['cart'] as $key => $value){
                    $id_sanpham = $value['id'];
                    $soluong = $value['soluong'];
                    $insert_order_details = "INSERT INTO tbl_cart_details(id_sanpham,code_cart,soluongmua) 
                    VALUE('".$id_sanpham."','".$code_order."','".$soluong."')";
                    mysqli_query($mysqli,$insert_order_details);
                } 

                header('Location: ' . $vnp_Url);
                die();
            } else {
                echo json_encode($returnData);
            }
    }
    // elseif($cart_payment =='paypal') {
            
    // }                           
        
        // $tieude = "Đặt hàng website trasuaruby.com thành công! ";
        // $noidung = "<p>cảm ơn quỷ khách đã đặt hàng của chúng tôi với mã đơn hàng : ".$code_order."</p>";
        // $noidung.= "<h4>Đơn hàng đặt bao gồm : </h4>";

        // foreach($_SESSION['cart'] as $key =>$val){
        //     $noidung.="<ul style='border:1px solid blue; margin:10px;'>
        //     <li>".$val['tensanpham']."</li>
        //     <li>".$val['masp']."</li>
        //     <li>".number_format($val['giasp'],0,',','.')."đ</li>
        //     <li>".$val['soluong']."</li>
        //     </ul>";
        // }
        // $maildathang = $_SESSION['email'];
        // $mail = new Mailer();
        // $mail ->dathangmail($tieude,$noidung,$maildathang);

        // unset($_SESSION['cart']);



?>