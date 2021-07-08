<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    
    

<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
          <a class="navbar-brand" href="#">Vk Blog</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">

<?php



$db = mysqli_connect('localhost','root','','myblog') or die("Database is Not Connected ! ");

function getSubMenu($db , $menu_id){
    $query = "SELECT * FROM submenu WHERE parent_menu_id = $menu_id and status = 1";
    $run = mysqli_query($db , $query);
    $data = array();
    
    while($d = mysqli_fetch_assoc($run)){
        $data[] = $d ;
    }

    return $data ;
}

function getSubMenuNo($db , $menu_id){
    $query = "SELECT * FROM submenu WHERE parent_menu_id = $menu_id";
    $run = mysqli_query($db , $query);
    return mysqli_num_rows($run);
}

$navQuery = "SELECT * FROM category WHERE status=1";
$runNav = mysqli_query($db , $navQuery);
while($menu = mysqli_fetch_assoc($runNav)){

    $no = getSubMenuNo($db , $menu['id']);

    if(!$no){
        ?>

<li class="nav-item">

                <?php if($menu['action']=="index.php"){
                  ?>
                  <a class="nav-link " aria-current="page" href="<?=$menu['action']?>"><?=$menu['name']?></a>

                  <?php
                  } else{
                  ?>

                  
                    <a class="nav-link " aria-current="page" href="<?=$menu['action']?>?id=<?php echo $menu['id']?>"><?=$menu['name']?></a>

                  <?php
                  }
                  ?>
                  
                  
                  


            
                
              </li>
        <?php

    }else{

        ?>

<li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="<?=$menu['action']?>" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><?=$menu['name']?>
                
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">

<?php

$submenus = getSubMenu($db , $menu['id']);
if(!$submenus){
  echo "</ul>
  </li>";
}else{

foreach($submenus as $sm){
    ?>
   <li><a class="dropdown-item" href="<?=$sm['action']?>?id=<?php echo $sm['id']?>"><?=$sm['name']?></a></li>
   </ul>
  </li>
<?php
}
}
    }
  }
?>

            </ul>
            <form class="d-flex">
              <input class="form-control me-2" type="search" name="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
          </div>
        </div>
      </nav>  






<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>