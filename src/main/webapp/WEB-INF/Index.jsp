<%@ page isErrorPage="true" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


                    <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">
                    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/carousel/">

                    <link rel="stylesheet"
                        href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
                        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                        crossorigin="anonymous">
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
                        crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
                        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                        crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
                        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
                        crossorigin="anonymous"></script>

                    <link rel="stylesheet" href="/css/styles.css">


                    <!DOCTYPE html>
                    <html>

                    <head>
                        <meta charset="UTF-8">
                        <title>Index</title>
                    </head>
                    <!-- Bootstrap core CSS -->
                    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

                    <!-- Custom styles for this template -->
                    <link href="carousel.css" rel="stylesheet">
                    </head>

                    <body>

                        <header>
                            <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                                <a class="navbar-brand" href="#">Carousel</a>
                                <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarCollapse">
                                    <ul class="navbar-nav mr-auto">
                                        <li class="nav-item active">
                                            <a class="nav-link" href="#">Stations <span class="sr-only">(current)</span></a>
                                        </li>
                                        <li class="nav-item active">
                                            <a class="nav-link" href="#">Contacts <span class="sr-only">(current)</span></a>
                                        </li>
                                        <li class="nav-item active">
                                            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                                        </li>
                                    </ul>
                                    <form class="form-inline mt-2 mt-md-0">
                                        <input class="form-control mr-sm-2" type="text" placeholder="Search"
                                            aria-label="Search">
                                        <button class="btn btn-outline-success my-2 my-sm-0"
                                            type="submit">Search</button>
                                            <a href="/Login" class="btn btn-primary">Login</a>
                                    </form>
                                </div>
                            </nav>
                        </header>

                        <main role="main">

                            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#myCarousel" data-slide-to="1"></li>
                                    <li data-target="#myCarousel" data-slide-to="2"></li>
                                </ol>

                            </div>
                            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                            </div>


                            <!-- Marketing messaging and featurettes
  ================================================== -->
                            <!-- Wrap the rest of the page in another container to center all the content. -->

                            <div class="container marketing">

                                <!-- Three columns of text below the carousel -->
                                <div class="row" style="margin-top: 300px;">
                                    <div class="col-lg-4">
                                        <img class="rounded-circle" src="/src/main/resources/Images/picture1.png"
                                            alt="Photo" width="140" height="140">
                                        <h2>Heading</h2>
                                        <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id
                                            dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac
                                            consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
                                        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a>
                                        </p>
                                    </div><!-- /.col-lg-4 -->
                                    <div class="col-lg-4">
                                        <img class="rounded-circle"
                                            src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
                                            alt="Generic placeholder image" width="140" height="140">
                                        <h2>Heading</h2>
                                        <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia
                                            odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce
                                            dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
                                        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a>
                                        </p>
                                    </div><!-- /.col-lg-4 -->
                                    <div class="col-lg-4">
                                        <img class="rounded-circle"
                                            src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
                                            alt="Generic placeholder image" width="140" height="140">
                                        <h2>Heading</h2>
                                        <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget
                                            quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus
                                            ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo
                                            sit amet risus.</p>
                                        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a>
                                        </p>
                                    </div><!-- /.col-lg-4 -->
                                </div><!-- /.row -->


                                <!-- START THE FEATURETTES -->

                                <hr class="featurette-divider">

                                <div class="row featurette">
                                    <div class="col-md-7">
                                        <h2 class="featurette-heading">First featurette heading. <span
                                                class="text-muted">It'll blow your mind.</span></h2>
                                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum
                                            id ligula porta felis euismod semper. Praesent commodo cursus magna, vel
                                            scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                                    </div>
                                    <div class="col-md-5">
                                        <img class="featurette-image img-fluid mx-auto"
                                            data-src="holder.js/500x500/auto" alt="Generic placeholder image">
                                    </div>
                                </div>

                                <hr class="featurette-divider">

                                <div class="row featurette">
                                    <div class="col-md-7 order-md-2">
                                        <h2 class="featurette-heading">Oh yeah, it's that good. <span
                                                class="text-muted">See for yourself.</span></h2>
                                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum
                                            id ligula porta felis euismod semper. Praesent commodo cursus magna, vel
                                            scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                                    </div>
                                    <div class="col-md-5 order-md-1">
                                        <img class="featurette-image img-fluid mx-auto"
                                            data-src="holder.js/500x500/auto" alt="Generic placeholder image">
                                    </div>
                                </div>

                                <hr class="featurette-divider">

                                <div class="row featurette">
                                    <div class="col-md-7">
                                        <h2 class="featurette-heading">And lastly, this one. <span
                                                class="text-muted">Checkmate.</span></h2>
                                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum
                                            id ligula porta felis euismod semper. Praesent commodo cursus magna, vel
                                            scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                                    </div>
                                    <div class="col-md-5">
                                        <img class="featurette-image img-fluid mx-auto"
                                            data-src="holder.js/500x500/auto" alt="Generic placeholder image">
                                    </div>
                                </div>

                                <hr class="featurette-divider">

                                <!-- /END THE FEATURETTES -->

                            </div><!-- /.container -->


                            <!-- FOOTER -->
                            <footer class="container">
                                <p class="float-right"><a href="#">Back to top</a></p>
                                <p>&copy; 2017-2018 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a
                                        href="#">Terms</a></p>
                            </footer>
                        </main>

                        <!-- Bootstrap core JavaScript
================================================== -->
                        <!-- Placed at the end of the document so the pages load faster -->
                        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
                            crossorigin="anonymous"></script>
                        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
                        <script src="../../assets/js/vendor/popper.min.js"></script>
                        <script src="../../dist/js/bootstrap.min.js"></script>
                        <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
                        <script src="../../assets/js/vendor/holder.min.js"></script>
                    </body>

                    </html>