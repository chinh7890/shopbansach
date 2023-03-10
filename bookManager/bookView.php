<?php
session_start();
if(isset($_POST["submit"])){
    if(!empty($_POST["title"]) && !empty($_POST["decribe"]) && !empty($_POST["price"]) && !empty($_POST["amount"])){
        if(isset($_FILES['image'])){
                $image = $_FILES['image']['name'];
                $image_temp =$_FILES['image']['tmp_name'];
                $target='C:/xampp/htdocs/shopbansach/ASSET/IMG/'.basename($_FILES['image']['name']);
                move_uploaded_file($image_temp, "$target");
        }
        ?>
        <?php
        if(isset($_POST['sid2'])){
            $title = $_POST["title"];
            $decribe= $_POST["decribe"];
            $image = basename($_FILES['image']['name']);
            $authorarr = $_POST['author'];
            $categoryarr = $_POST["category"];
            $publisherarr = $_POST["publisher"];
            $price = $_POST["price"];
            $discount = $_POST["discount"];
            $amount = $_POST["amount"];
            require_once "../connection.php";
            //---------------------------
            foreach($authorarr as $at)
            {
                $authortemp = $at;
            }
            $selectat = "SELECT MaTG FROM tacgia WHERE TenTG = '$authortemp'";
            $resultat = mysqli_query($conn,$selectat);
            while($rowat = mysqli_fetch_assoc($resultat)){
                $author = $rowat['MaTG'];
            }
            //---------------------------
            foreach($categoryarr as $cg)
            {
                $categorytemp = $cg;
            }
            $selectcg = "SELECT MaTL FROM theloaisach WHERE TenTL = '$categorytemp'";
            $resultcg = mysqli_query($conn,$selectcg);
            while($rowcg = mysqli_fetch_assoc($resultcg)){
                $category = $rowcg['MaTL'];
            }
            //---------------------------
            foreach($publisherarr as $pl)
            {
                $publishertemp = $pl;
            }
            $selectpl = "SELECT MaNXB FROM nhaxuatban WHERE TenNXB = '$publishertemp'";
            $resultpl = mysqli_query($conn,$selectpl);
            while($rowpl = mysqli_fetch_assoc($resultpl)){
                $publisher = $rowpl['MaNXB'];
            }
            //---------------------------
            $addsql = "INSERT INTO sach(TenSach, AnhMinhHoa, 
            MoTa, MaTG, MaTL, MaNXB, Gia, GiamGia, SoluongTon) VALUES ('$title','$image','$decribe',
            '$author','$category','$publisher','$price','$discount','$amount')";
            mysqli_query($conn,$addsql);
        }
        if(isset($_POST['sid'])){
            $id = $_POST['sid'];
            $title = $_POST["title"];
            $decribe= $_POST["decribe"];
            $image = basename($_FILES['image']['name']);
            $authorarr = $_POST['author'];
            $categoryarr = $_POST["category"];
            $publisherarr = $_POST["publisher"];
            $price = $_POST["price"];
            $discount = $_POST["discount"];
            $amount = $_POST["amount"];
            require_once "../connection.php";
            foreach($authorarr as $at)
            {
                $authortemp = $at;
            }
            $selectat = "SELECT MaTG FROM tacgia WHERE TenTG = '$authortemp'";
            $resultat = mysqli_query($conn,$selectat);
            while($rowat = mysqli_fetch_assoc($resultat)){
                $author = $rowat['MaTG'];
            }
            //---------------------------
            foreach($categoryarr as $cg)
            {
                $categorytemp = $cg;
            }
            $selectcg = "SELECT MaTL FROM theloaisach WHERE TenTL = '$categorytemp'";
            $resultcg = mysqli_query($conn,$selectcg);
            while($rowcg = mysqli_fetch_assoc($resultcg)){
                $category = $rowcg['MaTL'];
            }
            //---------------------------
            foreach($publisherarr as $pl)
            {
                $publishertemp = $pl;
            }
            $selectpl = "SELECT MaNXB FROM nhaxuatban WHERE TenNXB = '$publishertemp'";
            $resultpl = mysqli_query($conn,$selectpl);
            while($rowpl = mysqli_fetch_assoc($resultpl)){
                $publisher = $rowpl['MaNXB'];
            }
            $updatesql = "UPDATE sach SET TenSach='$title', AnhMinhHoa='$image', MoTa='$decribe', 
            MaTG='$author', MaTL='$category', MaNXB='$publisher', Gia='$price', GiamGia='$discount', SoluongTon='$amount' WHERE MaSach='$id'";
            mysqli_query($conn,$updatesql);
        }
    }
    else{
        if(empty($_POST["title"])){
            $_SESSION["notifi-title"] = "T??n s??ch kh??ng ???????c ????? tr???ng";
        }
        if(empty($_POST["decribe"])){
            $_SESSION["notifi-decribe"] = "Vui l??ng nh???p m?? t???";
        }
        if(empty($_POST["price"])){
            $_SESSION["notifi-price"] = "Gi?? kh??ng ???????c ????? tr???ng";
        }
        if(empty($_POST["amount"])){
            $_SESSION["notifi-amount"] = "S??? l?????ng t???n kh??ng ???????c ????? tr???ng";
        }
        if(isset($_POST['sid'])){
            $id=$_POST["sid"];
            header("location: updateBook.php?sid=".$id."");
        }
        else{
            header("location: addBook.php?sid2=dir");
        }
    }
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="../ASSET/CSS/reset.css">
    <link rel="stylesheet" href="../ASSET/CSS/userManager.css">
    <link rel="stylesheet" href="../ASSET/FONT/fontawesome-free-6.2.0-web/css/all.min.css">
</head>

<body>
    <header>
        <h1 class="header_heading">Trang qu???n l??</h1>
        <div class="header_right">
            <a class="header_right-homepage header_right-a" href="../main/index.php">
                <i class="fa-solid fa-house-chimney"></i>
                Trang ch???
            </a>
            <a class="header_right-logout header_right-a" href="../authencation/login.php">
                ????ng xu???t
            </a>
        </div>
    </header>
    <main>
        <div class="container">
            <?php require_once '../menu.php' ?>
            <div class="crud-user">
                <h3 class="crud-user_heading">Danh S??ch Th??ng Tin S??ch</h1>
                    <div class="crud-user_content">
                            <div class="btnAdd">
                            <a class="btnAdd-a" href="addBook.php?sid2=dir">Th??m s??ch</a>  
                            </div>        
                        <table class="crud-user_list">
                            <tr class="crud-user_titlebar">
                                <th class="crud-user_column-name">???nh</th>
                                <th class="crud-user_column-name">T??n s??ch</th>
                                <th class="crud-user_column-name">M?? t???</th>
                                <th class="crud-user_column-name">T??c gi???</th>
                                <th class="crud-user_column-name">Th??? lo???i</th>
                                <th class="crud-user_column-name">Nh?? xu???t b???n</th>
                                <th class="crud-user_column-name">Gi??</th>
                                <th class="crud-user_column-name">Gi???m gi??</th>
                                <th class="crud-user_column-name">S??? l?????ng t???n</th>
                                <th class="crud-user_column-name a-crud">
                                    <a class="a-crud-name" href="#">S???a</a>
                                </th>
                                <th class="crud-user_column-name a-crud">
                                    <a class="a-crud-name" href="#">X??a</a>
                                </th>
                            </tr>
                            <?php
                            require_once '../connection.php';
                            $selectsql = "SELECT sach.MaSach, sach.TenSach, sach.AnhMinhHoa, sach.MoTa, tacgia.TenTG, theloaisach.TenTL, nhaxuatban.TenNXB, 
                            sach.Gia, sach.GiamGia, sach.SoluongTon FROM
                            sach INNER JOIN tacgia ON sach.MaTG = tacgia.MaTG
                            INNER JOIN theloaisach ON sach.MaTL = theloaisach.MaTL
                            INNER JOIN nhaxuatban ON sach.MaNXB = nhaxuatban.MaNXB";
                            $result = mysqli_query($conn,$selectsql);
                            while($row = mysqli_fetch_assoc($result)){
                            ?>
                            <tr class="crud-user_row">
                                <?php
                                    echo'<th style="background-image: url(../ASSET/IMG/'.$row['AnhMinhHoa'].'"); background-size: cover;" class="crud-user_column crud-image crud-user_column-img">   
                                    </th>';
                                ?>
                                <th class="crud-user_column">
                                    <span class="crud-user_column-span"><?php echo $row['TenSach']; ?></span>       
                                </th>
                                <th class="crud-user_column">
                                    <span class="crud-user_column-span"><?php echo $row['MoTa']; ?></span>  
                                </th>
                                <th class="crud-user_column">
                                    <span class="crud-user_column-span"><?php echo $row['TenTG']; ?></span>  
                                </th>
                                <th class="crud-user_column column_role">
                                    <span class="crud-user_column-span"><?php echo $row['TenTL']; ?></span>  
                                </th>
                                <th class="crud-user_column column_role">
                                    <span class="crud-user_column-span"><?php echo $row['TenNXB']; ?></span>  
                                </th>
                                <th class="crud-user_column column_role">
                                    <span class="crud-user_column-span"><?php echo $row['Gia']; ?></span>  
                                </th>
                                <th class="crud-user_column column_role">
                                    <span class="crud-user_column-span"><?php echo $row['GiamGia']; ?></span>  
                                </th>
                                <th class="crud-user_column column_role">
                                    <span class="crud-user_column-span"><?php echo $row['SoluongTon']; ?></span>  
                                </th>
                                <th class="crud-user_column a-crud">
                                    <a class="a-crud-a" href="updateBook.php?sid=<?php echo $row['MaSach']; ?>">S???a</a>
                                </th>
                                <th class="crud-user_column a-crud">
                                    <a onclick="return confirm('B???n c?? th???t s??? mu???n x??a kh??ng?')" class="a-crud-a"
                                        href="deleteBook.php?sid=<?php echo $row['MaSach']; ?>">X??a</a>
                                </th>
                            </tr>
                            <?php } ?>
                        </table>
                    </div>
                    <!--CRUD -->
            </div>

        </div>
    </main>
</body>

</html>
<?php
?>