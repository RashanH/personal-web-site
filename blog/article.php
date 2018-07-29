<?php
try {
      if (isset($_GET['id'])) {
            $id = preg_replace( '/[^0-9]/', '', $_GET['id']);
        } else {
            throw new Exception("Input error");
        }
        $conn=mysqli_connect("localhost","root","","rashanx");
        // Check connection
        if (mysqli_connect_errno()){
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
            die();
        }
mysqli_set_charset($conn,"utf8");
$id =  mysqli_real_escape_string($conn, $id);
        $sql = "SELECT * FROM blog_posts WHERE id='$id'";
        $res_data = mysqli_query($conn,$sql); //or die("Error"); // . mysqli_error($conn))
        if (!$res_data) {
    throw new Exception(mysqli_error($conn)."[$sql]");
}
if ($res_data->num_rows > 0) {

        while($row = mysqli_fetch_array($res_data)){
            //here goes the data
            $posttitle = htmlentities($row['posttitle']);
            $postbody = $row['postbody'];
            $postauthor = htmlentities($row['postauthor']);
             $views = htmlentities($row['views']);
             $postdate = htmlentities($row['postdate']);
             $id = htmlentities($row['id']);
             $postdis = htmlentities($row['postdis']);
 $iserrors = false;
        }

$updatedviewcount = ($views +1);
$updatedviewcount = mysqli_real_escape_string($conn, $updatedviewcount) ;
    $sql = "UPDATE blog_posts SET views='$updatedviewcount' WHERE id='$id'";
    mysqli_query($conn, $sql);


    } else {
        throw new Exception("Not Found");
    }
        mysqli_close($conn);
    } catch (Exception $e) {
      $iserrors = true;
       $posttitle = "Not Found";
            $postbody = "<br><center><img src=\"../errors/404.png\" class=\"error-img\"></center>";
            $postauthor = "NULL";
             $views = "NULL";
              $postdate = "NULL";
              $id = "1";
               $postdis = "Not Found";
    }
?>




    <!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Introducing Lollipop, a sweet new take on Android.">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
    <title><?php echo $posttitle; ?> | Rashan Hasaranga's Official Website</title>

<?php 
try {
     $conn=mysqli_connect("localhost","root","","rashanx");
   $sql = "SELECT id FROM blog_posts ORDER BY id DESC LIMIT 1";
    $res_data = mysqli_query($conn, $sql); 
    if (!$res_data) {
      throw new Exception(mysqli_error($conn)."[$sql]");
    }
     while ($row = mysqli_fetch_array($res_data))
        {
if (htmlentities($row['id']) > $id) {
    echo "<link rel=\"next\" href=\"https://rashanhasaranga.com/blog/article.php?id=". ($id+1). "\">";
}
        }
    mysqli_close($conn);
}
catch(Exception $e) {
  echo "";
}
try {
    if ($id !== "1") {
    echo "<link rel=\"prev\" href=\"https://rashanhasaranga.com/blog/article.php?id=". ($id-1). "\">";
}
    }
catch(Exception $e) {
  echo "";
}
     ?>



  <script type="application/ld+json">
{
  "@context": "http://schema.org",
  "@type": "Article",
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://google.com/article"
  },
  "headline": "<?php echo $posttitle; ?>",
  "image": [
    "https://rashanhasaranga.com/blog/thumbs/s_1x1.jpg",
    "https://rashanhasaranga.com/blog/thumbs/s_4x3.jpg",
    "https://rashanhasaranga.com/blog/thumbs/s_16x9.jpg"
   ],
  "datePublished": "2018-02-05T08:00:00+08:00",
  "dateModified": "2018-02-05T09:20:00+08:00",
  "author": {
    "@type": "Person",
    "name": "Rashan Hasaranga"
  },
   "publisher": {
    "@type": "Organization",
    "name": "Rashan Hasaranga",
    "logo": {
      "@type": "ImageObject",
      "url": "https://rashanhasaranga.com/blog/rashan_author.png"
    }
  },
  "description": "<?php echo $postdis; ?>"
}
</script>
<script type="application/ld+json">
{
  "@context": "http://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [{
    "@type": "ListItem",
    "position": 1,
    "item": {
      "@id": "https://rashanhasaranga.com",
      "name": "Rashan Hasaranga"
    }
  },{
    "@type": "ListItem",
    "position": 2,
    "item": {
      "@id": "https://rashanhasaranga.com/blog",
      "name": "Blog"
    }
  },{
    "@type": "ListItem",
    "position": 3,
    "item": {
      "@id": "<?php (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>",
      "name": "Article"
    }
  }]
}
</script>
    <!-- Page styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.blue-light_blue.min.css">
<link href='http://fonts.googleapis.com/earlyaccess/notosanssinhala.css' rel='stylesheet' type='text/css'/>


    <meta name="Description" content="Rashan Hasaranga's official blog. Hang out for most exclutive news and tech products.">
    <meta name="Keywords" content="<?php echo $posttitle ?>, <?php echo $postdis ?>, rashan blog, rashan hasaranga contact, Rashan Hasaranga, Rashan Hasaranga Perera, Rashan website, Rashan Hasaranga website, රෂාන් හසරංග, රෂාන්, රශාන්, රශාන් හසරංග">
    <meta name="theme-color" content="#424242">
    <link rel="icon" href="../favicon.png">

    <meta property="og:url"  content="<?php (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>" />
<meta property="og:type" content="article" />
<meta property="og:title" content="<?php echo $posttitle ?>" />
<meta property="og:description" content="<?php echo $postdis ?>" />
<meta property="og:image" content="https://rashanhasaranga.com/og.jpg" />

    <style type="text/css">
        footer {
            position: absolute;
            bottom: 0;
            width: 100%;
        }

        .active {
            background: #0383f0;
        }

        .demo-ribbon {
            width: 100%;
            height: 40vh;
            background-color: #2196F3;
            -webkit-flex-shrink: 0;
            -ms-flex-negative: 0;
            flex-shrink: 0;
        }

        .demo-main {
            margin-top: -35vh;
            -webkit-flex-shrink: 0;
            -ms-flex-negative: 0;
            flex-shrink: 0;
        }

        .demo-header .mdl-layout__header-row {
            padding-left: 40px;
        }

        .demo-container {
            max-width: 1600px;
            width: calc(100% - 16px);
            margin: 0 auto;
        }

        .demo-content {
            border-radius: 2px;
            padding: 80px 56px;
            margin-bottom: 80px;
        }

        .demo-layout.is-small-screen .demo-content {
            padding: 40px 28px;
        }

        .demo-content h3 {
            margin-top: 48px;
        }

        .demo-footer {
            padding-left: 40px;
        }

        .demo-footer .mdl-mini-footer--link-list a {
            font-size: 13px;
        }

        .inforow {
            border-bottom: 1px solid #e1e1e1;
            overflow: hidden;
        }

        .mdl-list__item--three-line {
            height: auto;
        }

        .mdl-list__item--three-line .mdl-list__item-primary-content {
            height: auto;
        }

        .mdl-list__item--three-line .mdl-list__item-text-body {
            height: auto;
        }
.mdl-list__item {
    padding: 0px;
}
        .responsive-img {
            max-width: 100%;
            height: auto;
            border-radius: 50%;
        }
        
.error-img {
            max-width: 100%;
            height: auto;
        }

.innerpost {
text-align: justify;
text-justify: inter-word;
font-size: 14px;
line-height: 26px;
-moz-osx-font-smoothing: grayscale;
-webkit-text-stroke: 0.45px rgba(0, 0, 0, 0.1);
text-shadow: #fff 0px 1px 1px;
word-wrap: break-word;
font-family: Noto Sans Sinhala,Verdana,Arial;
color: #565656;
}
.innerpost-author {
text-align: justify;
text-justify: inter-word;
font-size: 14px;
line-height: 26px;
-moz-osx-font-smoothing: grayscale;
-webkit-text-stroke: 0.45px rgba(0, 0, 0, 0.1);
word-wrap: break-word;
font-family: Noto Sans Sinhala,Verdana,Arial;
}
.innercmnts {

}

.demo-crumbs a {
    color: #9e9e9e !important;
    text-decoration: none;
 }   
 .demo-list-two {
  width: 100%;
}
.mdl-color--teal-100 {
    background-color: #fff !important;
    background-image: url(rashan_author.png);
    background-repeat: no-repeat;
    background-size: 60%;

            height: auto;
            background-position: center; 
}

 @media only screen and (max-width: 839px) {
.demo-content {
    padding: 80px 20px;
}
}

 </style>

</head>

<body>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0&appId=496038017485218&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
        <header class="mdl-layout__header">
            <div class="mdl-layout__header-row">
                <span class="mdl-layout-title">Blog</span>
                <div class="mdl-layout-spacer"></div>
                <nav class="mdl-navigation mdl-layout--large-screen-only">
                    <a class="mdl-navigation__link" href="../index.php">Home</a>
                    <a class="mdl-navigation__link" href="../about.php">About</a>
                    <a class="mdl-navigation__link" href="../gallery">Gallery</a>
                    <a class="mdl-navigation__link active" href="../blog">Blog</a>
                    <a class="mdl-navigation__link" href="../facebook-mega-toolkit-download">Facebook Mega Toolkit</a>
                    <a class="mdl-navigation__link" href="../contact.php">Contact</a>
                </nav>
            </div>
        </header>
        <div class="mdl-layout__drawer">
            <span class="mdl-layout-title">Rashan Hasaranga</span>
            <nav class="mdl-navigation">
                <a class="mdl-navigation__link" href="../index.php">Home</a>
                <a class="mdl-navigation__link" href="../about.php">About</a>
                <a class="mdl-navigation__link" href="../gallery">Gallery</a>
                <a class="mdl-navigation__link" href="../blog">Blog</a>
                <a class="mdl-navigation__link" href="../facebook-mega-toolkit-download">Facebook Mega Toolkit</a>
                <a class="mdl-navigation__link" href="../contact.php">Contact</a>
            </nav>
        </div>

        <div class="demo-ribbon"></div>

        <main class="demo-main mdl-layout__content">
            <div class="demo-container mdl-grid">
                <div class="mdl-cell mdl-cell--2-col mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
                <div class="demo-content mdl-color--white mdl-shadow--4dp content mdl-color-text--grey-800 mdl-cell mdl-cell--8-col">
                    <div class="demo-crumbs mdl-color-text--grey-500">
              <a href="../">Rashan Hasaranga's Official Website</a> &gt; <a href="../blog">Blog</a> &gt; <?php echo $posttitle; ?>
            </div>

            <center style="<?php if($iserrors == true){ echo 'display:none;'; } ?>"><h3><?php echo $posttitle; ?></h3></center>
                   
<div class="innerpost" id="mainpost"><?php echo $postbody ?></div>





<?php if($iserrors == false){ 
 echo  "<center><div class=\"fb-share-button\" data-href=\"" . (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]" .
"\" data-layout=\"button\" data-size=\"large\" data-mobile-iframe=\"true\"><a target=\"_blank\" href=\"https://www.facebook.com/sharer/sharer.php?u=" . (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]" . "%2F&amp;src=sdkpreparse\" class=\"fb-xfbml-parse-ignore\">Share This Post</a></div></center>" .

"<div class=\"innerpost-author\" id=\"author\">

          <section class=\"section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp\">
            <header class=\"section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white\">
            </header>
            <div class=\"mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone\">
              <div class=\"mdl-card__supporting-text\">
                <h4>" .  $postauthor  . "</h4>
                Posted on " . $postdate .  "<br>" . $updatedviewcount . " views
              </div>
              <div class=\"mdl-card__actions\">
              <a href=\"../contact.php\" class=\"mdl-button\">Contact</a>
                <a href=\"../about.php\" class=\"mdl-button\">More Info</a>
              </div>
            </div>
          </section>


</div>"; }
?>
<?php if($iserrors == false){ 
    echo "<div class=\"innercmnts\" id=\"comments\">" .
"<div class=\"fb-comments\" data-href=\""  . (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]" . "\" data-width=\"100%\" data-numposts=\"5\"></div>
</div>"; } 
?>



                </div>
                <div class="mdl-cell mdl-cell--2-col mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
            </div>

            <footer class="demo-footer mdl-mini-footer">
                <div class="mdl-mini-footer--left-section">
                    <div class="content mdl-cell mdl-cell--12-col mdl-cell--4-col-phone mdl-cell--8-col-tablet">
                        <ul class="mdl-mini-footer--link-list">
                            <li> <span class="mdl-list__item-text-body">
                                    © 2018 Rashan Hasaranga
                                </span><span>|</span>
                                <span class="mdl-list__item-text-body"><a href="../terms.php">Privacy and Terms</a></span></li>
                        </ul>
                    </div>
                </div>
            </footer>

        </main>




    </div>


    <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>

</body>

</html>