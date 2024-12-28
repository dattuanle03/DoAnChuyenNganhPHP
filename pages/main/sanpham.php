<p>Chi tiết sản phẩm</p>
<?php
$sql_chitiet = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id_danhmuc AND
     tbl_sanpham.id_sanpham='$_GET[id]' LIMIT 1";
$query_chitiet = mysqli_query($mysqli, $sql_chitiet);
while ($row_chitiet = mysqli_fetch_array($query_chitiet)) {
?>
    <div class="wrapper_chiter">
        <div class="hinhanh_sanpham">
            <img width="100%" src="admin/modules/quanlysp/uploads/<?php echo $row_chitiet['hinhanh'] ?>">
        </div>
        <form method="POST" action="pages/main/themgiohang.php?idsanpham=<?php echo $row_chitiet['id_sanpham'] ?>">
            <div class="chitiet_sanpham">
                <h3 style="margin: 0;">Tên sản phẩm : <?php echo $row_chitiet['tensanpham'] ?></h3>
                <p>Mã sản phẩm : <?php echo $row_chitiet['masp'] ?></p>
                <p>Giá sản phẩm : <?php echo number_format($row_chitiet['giasp'], 0, ',', '.') . 'vnđ' ?></p>
                <p>Danh mục sản phẩm : <?php echo $row_chitiet['tendanhmuc'] ?></p>
                <p><input class="themgiohang" name="themgiohang" type="submit" value="Thêm giỏ hàng"></p>
            </div>
        </form>
    </div>
    <div class="clear"></div>
    <div class="tabs">
        <ul id="tabs-nav">
            <li><a href="#tab1">Thông tin</a></li>
            <li><a href="#tab2">Nội dung chi tiết</a></li>
            <li><a href="#tab3">Hình ảnh sản phẩm</a></li>
        </ul> 
        <div id="tabs-content">
            <div id="tab1" class="tab-content">
                <?php echo $row_chitiet['tomtat'] ?>
            </div>
            <div id="tab2" class="tab-content">
                <?php echo $row_chitiet['noidung'] ?>
            </div>
            <div id="tab3" class="tab-content" style="text-align: center;">
                <img width="50%" src="admin/modules/quanlysp/uploads/<?php echo $row_chitiet['hinhanh'] ?>">
            </div>
        </div> 
    </div>
<?php
}
?>