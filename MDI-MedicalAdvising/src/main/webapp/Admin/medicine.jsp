<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/2/2021
  Time: 5:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Purple Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- <link rel="stylesheet" href="../../assets/vendors/css/vendor.bundle.base.css"> -->
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../assets/css/admin.css">
    <!-- End layout styles -->
</head>

<body>
<div class="container-scroller">
    <!-- partial:../../partials/_navbar.html -->
    <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
            <a class="navbar-brand brand-logo" href="./index.html"><img
                    src="https://raw.githubusercontent.com/BootstrapDash/PurpleAdmin-Free-Admin-Template/62c7c39e98f107b89af42ef9826923d8ae0a87c8/assets/images/logo.svg"
                    alt="logo" /></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-stretch">
            <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                <span class="mdi mdi-menu"></span>
            </button>
            <div class="search-field d-none d-md-block">
                <form class="d-flex align-items-center h-100" action="#">
                    <div class="input-group">
                        <div class="input-group-prepend bg-transparent">
                            <i class="input-group-text border-0 mdi mdi-magnify"></i>
                        </div>
                    </div>
                </form>
            </div>
            <ul class="navbar-nav navbar-nav-right">
                <li class="nav-item nav-profile dropdown">
                    <a class="nav-link dropdown-toggle profile-dropdown" href="#">
                        <div class="nav-profile-img">
                            <img class="avatar" src="../assets/image/maxresdefault.jpg" alt="image">
                            <span class="availability-status online"></span>
                        </div>
                        <div class="nav-profile-text">
                            <p class="mb-1 text-black">Nguy???n Anh Qu???c</p>
                        </div>
                    </a>
                    <div class="dropdown-menu navbar-dropdown drop-item">
                        <a class="dropdown-item" href="../login.html">
                            <i class="mdi mdi-logout mr-2 text-primary"></i> Signout </a>
                    </div>
                </li>
                <li class="nav-item nav-logout d-none d-lg-block">
                    <a class="nav-link" href="#">
                        <i class="mdi mdi-power"></i>
                    </a>
                </li>
                <li class="nav-item nav-settings d-none d-lg-block">
                    <a class="nav-link" href="#">
                        <i class="mdi mdi-format-line-spacing"></i>
                    </a>
                </li>
            </ul>
        </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:../../partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">
                <li class="nav-item nav-profile">
                    <a href="#" class="nav-link">
                        <div class="nav-profile-image">
                            <img class="avatar" src="../assets/image/maxresdefault.jpg" alt="profile">
                            <!--change to offline or busy as needed-->
                        </div>
                        <div class="nav-profile-text d-flex flex-column">
                            <span class="font-weight-bold mb-2">Nguy???n Anh Qu???c</span>
                            <span class="text-secondary text-small">Admin</span>
                        </div>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.html">
                        <span class="menu-title">Dashboard</span>
                        <i class="mdi fas fa-home menu-icon"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./user.html">
                        <span class="menu-title">Ng?????i d??ng</span>
                        <i class="mdi fas fa-users-cog menu-icon"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./doctor.html">
                        <span class="menu-title">B??c s??</span>
                        <i class="mdi fas fa-user-md menu-icon"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./pharmacy.html">
                        <span class="menu-title">Nh?? thu???c</span>
                        <i class="mdi fas fa-cannabis menu-icon"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./medicine.html">
                        <span class="menu-title">Qu???n l?? thu???c</span>
                        <i class="mdi fas fa-capsules menu-icon"></i>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel" id="top">
            <div class="content-wrapper">
                <div class="page-header">
                    <h3 class="page-title"> Qu???n l?? thu???c </h3>
                    <nav aria-label="breadcrumb">
                    </nav>
                </div>
                <div class="row">
                    <div class="col-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Danh s??ch thu???c</h4>
                                <a class="float-right" href="#add"><button class="btn-icon-text btn btn-sm btn-info"><i
                                        class="btn-icon-prepend fas fa-plus"></i>Th??m m???i</button></a>
                                <a href="#top" class="go-to-top"><button class="btn btn-gradient-info btn-rounded btn-icon"><i
                                        class="fas fa-arrow-up"></i></button></a>
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th> T??n thu???c </th>
                                        <th> M?? t??? </th>
                                        <th> Lo???i thu???c </th>
                                        <th> Gi?? </th>
                                        <th> ID </th>
                                        <th class="th-control">??i???u ch???nh</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td> T??n 1 </td>
                                        <td>M?? t???</td>
                                        <td>
                                            <label class="badge badge-success">Kh??ng sinh</label>
                                        </td>
                                        <td> 100.000?? </td>
                                        <td> T01 </td>
                                        <td>
                                            <a href="#add"><button class="btn btn-sm btn-icon-text btn-gradient-dark btn-edit"><i
                                                    class=" btn-icon-prepend far fa-edit"></i>S???a</button></a>
                                            <button class="btn btn-sm btn-icon-text btn-gradient-danger btn-delete"><i
                                                    class=" btn-icon-prepend fas fa-trash-alt"></i>X??a</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> T??n 2 </td>
                                        <td>M?? t???</td>
                                        <td>
                                            <label class="badge badge-info">Covid-19</label>
                                        </td>
                                        <td> 230.000?? </td>
                                        <td> T02 </td>
                                        <td>
                                            <a href="#add"><button class="btn btn-sm btn-icon-text btn-gradient-dark btn-edit"><i
                                                    class=" btn-icon-prepend far fa-edit"></i>S???a</button></a>
                                            <button class="btn btn-sm btn-icon-text btn-gradient-danger btn-delete"><i
                                                    class=" btn-icon-prepend fas fa-trash-alt"></i>X??a</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> T??n 3 </td>
                                        <td>M?? t???</td>
                                        <td>
                                            <label class="badge badge-warning">Ti??u h??a</label>
                                        </td>
                                        <td> 52.000?? </td>
                                        <td> T03 </td>
                                        <td>
                                            <a href="#add"><button class="btn btn-sm btn-icon-text btn-gradient-dark btn-edit"><i
                                                    class=" btn-icon-prepend far fa-edit"></i>S???a</button></a>
                                            <button class="btn btn-sm btn-icon-text btn-gradient-danger btn-delete"><i
                                                    class=" btn-icon-prepend fas fa-trash-alt"></i>X??a</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> T??n 3 </td>
                                        <td>M?? t???</td>
                                        <td>
                                            <label class="badge badge-warning">Ti??u h??a</label>
                                        </td>
                                        <td> 52.000?? </td>
                                        <td> T03 </td>
                                        <td>
                                            <a href="#add"><button class="btn btn-sm btn-icon-text btn-gradient-dark btn-edit"><i
                                                    class=" btn-icon-prepend far fa-edit"></i>S???a</button></a>
                                            <button class="btn btn-sm btn-icon-text btn-gradient-danger btn-delete"><i
                                                    class=" btn-icon-prepend fas fa-trash-alt"></i>X??a</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> T??n 4 </td>
                                        <td>M?? t???</td>
                                        <td>
                                            <label class="badge badge-danger">Huy???t ??p</label>
                                        </td>
                                        <td> 1.234.567?? </td>
                                        <td> T04 </td>
                                        <td>
                                            <a href="#add"><button class="btn btn-sm btn-icon-text btn-gradient-dark btn-edit"><i
                                                    class=" btn-icon-prepend far fa-edit"></i>S???a</button></a>
                                            <button class="btn btn-sm btn-icon-text btn-gradient-danger btn-delete"><i
                                                    class=" btn-icon-prepend fas fa-trash-alt"></i>X??a</button>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title" id="add">Th??m thu???c m???i/ C???p nh???t</h4>
                                <br>
                                <form class="forms-sample">
                                    <div class="form-group">
                                        <label for="exampleInputName1">T??n thu???c</label>
                                        <input type="text" class="form-control" id="exampleInputName" placeholder="Nh???p t??n thu???c">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleTextarea1">M?? t???</label>
                                        <textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleSelectGender">Lo???i thu???c</label>
                                        <select class="form-control" id="exampleSelectGender" style="cursor: pointer;">
                                            <option value="Ti??u h??a">Ti??u h??a</option>
                                            <option value="Kh??ng sinh">Kh??ng sinh</option>
                                            <option value="Covid-19">Covid-19</option>
                                            <option value="Huy???t ??p">Huy???t ??p</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputName1">Gi??</label>
                                        <input type="number" class="form-control" id="exampleInputName1" placeholder="Nh???p gi??">
                                    </div>
                                    <div class="form-group">
                                        <!-- <label>???nh</label>
                                          <input type="file" name="img[]" class="file-upload-default">
                                          <div class="input-group col-xs-12">
                                            <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image">
                                            <span class="input-group-append">
                                              <button class="file-upload-browse btn btn-gradient-primary" type="button">Upload</button>
                                            </span>
                                          </div> -->
                                        <label>???nh</label>
                                        <div class="input-group">
                                            <input class="form-control" type="file" accept="image/*" id="upload-photo">
                                            <div class="question__form__img-review">
                                                <!-- js here -->
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-icon-text btn-gradient-info mr-2 btn-submit"><i
                                            class="btn-icon-prepend fas fa-paper-plane"></i>Th??m</button>
                                    <button class="btn btn-icon-text btn-gradient-dark btn-reset"><i
                                            class=" btn-icon-prepend fas fa-redo-alt"></i>?????t l???i</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
            <!-- partial:../../partials/_footer.html -->
            <!-- partial -->
        </div>
        <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<!-- modal -->
<div class="modal">
    <div class="overlay">
        <div class="modal__body">
            <h3>B???n c?? mu???n x??a d??? li???u n??y?</h3>
            <div class="btn-wrapper">
                <button class="btn btn-gradient-success mr-2 btn-agree">?????ng ??</button>
                <button class="btn btn-gradient-danger mr-2 btn-reject">Quay l???i</button>
            </div>
        </div>
    </div>
</div>
<script src="../js/admin.js"></script>
</body>

</html>
