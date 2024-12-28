<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <title>Trà sữa RUBY</title>

</head>

<body>
<div class="container-fluid">
    <div class="row">
        <?php
        ob_start();
        session_start();

        include("admin/config/config.php");
        $quanly = isset($_GET['quanly']) ? $_GET['quanly'] : '';

        if ($quanly == '') {
            include("pages/header.php");
        }
        include("pages/menu.php");
        include("pages/main.php");
        include("pages/footer.php");
        ?>
    </div>
</div>


    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript">
        // Show the first tab and hide the rest
        $('#tabs-nav li:first-child').addClass('active');
        $('.tab-content').hide();
        $('.tab-content:first').show();

        // Click function
        $('#tabs-nav li').click(function() {
            $('#tabs-nav li').removeClass('active');
            $(this).addClass('active');
            $('.tab-content').hide();

            var activeTab = $(this).find('a').attr('href');
            $(activeTab).fadeIn();
            return false;
        });
    </script>
</body>
<!-- <script type="text/javascript">

    jQuery(document).ready(function() {

        var back = jQuery(".prev");
        var next = jQuery(".next");
        var steps = jQuery(".step");

        next.bind("click", function() {
            jQuery.each(steps, function(i) {
                if (!jQuery(steps[i]).hasClass('current') && !jQuery(steps[i]).hasClass('done')) {
                    jQuery(steps[i]).addClass('current');
                    jQuery(steps[i - 1]).removeClass('current').addClass('done');
                    return false;
                }
            })
        });
        back.bind("click", function() {
            jQuery.each(steps, function(i) {
                if (jQuery(steps[i]).hasClass('done') && jQuery(steps[i + 1]).hasClass('current')) {
                    jQuery(steps[i + 1]).removeClass('current');
                    jQuery(steps[i]).removeClass('done').addClass('current');
                    return false;
                }
            })
        });

    })
</script> -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
    integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<script src="https://www.paypal.com/sdk/js?client-id=ARjtk4vV_tUpNJwhp8VzYSgVucBjbSGofmq3ZQF1v_IEelzNM1xdZsU9ZTk8fDkiRPTeXrL6x1w8oyDs&currency=USD"></script>
<script>
paypal.Buttons({
    createOrder: function(data, actions) {
        var tongtien = document.getElementById('tongtien').value;
        return actions.order.create({
            purchase_units: [{
                amount: {
                    value: tongtien
                }
            }]
        });
    },

    onApprove: function(data, actions) {
        return actions.order.capture().then(function(orderData) {
            console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
            var transaction = orderData.purchase_units[0].payments.captures[0];
            alert('Transaction ' + transaction.status + ': ' + transaction.id + '\n\nSee console for all available details');
            window.location.href = 'http://localhost/DOANCHUYENNGANH/index.php?quanly=camon&thanhtoan=paypal';
        });
    },

    oncancel: function(data) {
        alert("Giao dịch đã bị hủy.");
        window.location.replace('http://localhost/DOANCHUYENNGANH/index.php?quanly=camon&thanhtoan=paypal');
    }
}).render('#paypal-button');
</script>
</html>