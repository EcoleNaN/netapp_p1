<?php 
session_start();
if(!(isset($_SESSION['id_admin'])))
{
    header("location:page-login.php");
}
else
{
require'traitement/database.php'; 
require'dashbord.php';
$db = Database::connect();
$items = $db->query("SELECT * FROM nan_plus");
?>


        <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Tableau de bord</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li><a href="accueil.html">Tableau de bord</a></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">

                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header col-md-10" >
                                <strong class="card-title">Nan + 25ans</strong>
                                <?php
                                 $db = Database::connect();

                               $statMail = $db->prepare("SELECT email FROM nan_plus");
                               $statMail->execute(array());

                             
                               $email = '';
                       while ($itemMail = $statMail->fetch()) 
                       {
                         
                            $itemMail['email'] ;
                            echo '  ';
                            $email .= $itemMail['email']. ';';

                            
                        }
                        
                        
                        Database::disconnect();
                      ?>
                               <a href="mailto:<?php echo $email ?>" style="background-image: linear-gradient(to bottom, #9d8fdd, #811589);" class="btn btn-success btn-md"><span class="fa fa-envelope" ></span> E-MAIL A TOUS LES ETUDIANTS DE + 25 ANS</a>
                <canvas id="" width="100%" height="10"></canvas>
                            </div>
                            <div class="card-body">
                                <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>NOM</th>
                                            <th>PRENOMS</th>
                                            <th>NUMERO</th>
                                            <th>Adresse E-mail</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php 
                    while($newletter = $items -> fetch()){ ?>
                                  <tr>
                                      <td><?php echo $newletter['id_etud']; ?></td>
                                      <td><?php echo $newletter['nom']; ?></td>
                                      <td><?php echo $newletter['prenoms']; ?></td>
                                      <td><?php echo $newletter['numero']; ?></td>
                                      <td><?php echo $newletter['email']; ?></td>
                                      <td width=100>
                             <a class="btn btn-primary" style="background-color: #9a8efa" href="mailto:<?php echo $newletter['email'] ?>"><span class="fa fa-location-arrow"></span>

                            send </a>
                        
                         </td>
                         </tr>
                     <?php } ?>
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>


                </div>
            </div><!-- .animated -->
        </div><!-- .content -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <ul class="list-inline quicklinks">
              <li class="list-inline-item" style="color: red">
                Designed by
              </li>
              <li class="list-inline-item">
                <a href="#" style="color: blue">Three Boys</a>
              </li>
            </ul>
    </div>
    <span class="copyright" style="color: red">Copyright &copy; NAN1.18</span>
  </footer>


    </div><!-- /#right-panel -->

    <!-- Right Panel -->


    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <script src="vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>


    <script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="vendors/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="vendors/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>
    <script src="vendors/jszip/dist/jszip.min.js"></script>
    <script src="vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="vendors/pdfmake/build/vfs_fonts.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons.colVis.min.js"></script>
    <script src="assets/js/init-scripts/data-table/datatables-init.js"></script>


</body>

</html>
<?php } ?>