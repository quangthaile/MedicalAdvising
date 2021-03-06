<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/4/2021
  Time: 11:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Medical Advising Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
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
                    alt="logo"/></a>
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
                        <a class="dropdown-item" href="/account?actionUser=logout">
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
                    <h3 class="page-title"> Qu???n l?? ng?????i d??ng </h3>
                    <nav aria-label="breadcrumb">
                    </nav>
                </div>
                <div class="row">
                    <div class="col-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Danh s??ch ng?????i d??ng</h4>
                                <a class="float-right" href="/admin?actionUser=addCustomer">
                                    <button class="btn-icon-text btn btn-sm btn-info"><i
                                            class="btn-icon-prepend fas fa-plus"></i>Th??m m???i
                                    </button>
                                </a>
                                <a href="#top" class="go-to-top">
                                    <button class="btn btn-gradient-info btn-rounded btn-icon"><i
                                            class="fas fa-arrow-up"></i></button>
                                </a>
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th> ID</th>
                                        <th> H??? T??n</th>
                                        <th> username</th>
                                        <th> Vai tr??</th>
                                        <th class="th-control">??i???u ch???nh</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${customers}" var="customer">
                                        <tr>
                                            <td> ${customer.getId()}</td>
                                            <td> ${customer.getFullName()} </td>
                                            <td> ${customer.getAccount().getUserName()} </td>
                                            <td> ${customer.getAccount().getTypeAccount().getTypeName()} </td>
                                            <td>
                                                <a href="/admin?actionUser=editCustomer&id=${customer.getId()}">
                                                    <button class="btn btn-sm btn-icon-text btn-gradient-dark btn-edit">
                                                        <i
                                                                class=" btn-icon-prepend far fa-edit"></i>S???a
                                                    </button>
                                                </a>
                                                <button class="btn btn-sm btn-icon-text btn-gradient-danger btn-delete" data-toggle="modal" data-target="#deleteModal">
                                                    <i class=" btn-icon-prepend fas fa-trash-alt"></i>X??a
                                                </button>
                                                    <%--Modal delete--%>
                                                <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
                                                     aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalLabel">X??c nh???n</h5>
                                                                <button type="button" class="close" data-dismiss="modal"
                                                                        aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                B???n c?? mu???n xo?? ng?????i d??ng ${customer.getFullName()} kh??ng?
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary"
                                                                        data-dismiss="modal">Quay l???i
                                                                </button>
                                                                <a href="/admin?actionUser=deleteCustomer&id=${customer.getId()}">
                                                                    <button type="button" class="btn btn-danger"> <i class=" btn-icon-prepend fas fa-trash-alt"></i>
                                                                        ?????ng ??
                                                                    </button>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                    <%--End modal--%>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <c:if test="${action.equals('edit')}">
                <div class="row">
                    <div class="col-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title" id="add">C???p nh???t th??ng tin</h4>
                                <br>
                                <form class="forms-sample" method="post" action="/admin?actionUser=editCustomer">
                                    <div class="form-group">
                                        <label for="exampleTextarea1">ID</label>
                                        <input class="form-control" disabled id="exampleTextarea" rows="4"
                                               value="${customer.getId()}" name="id"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputName1">H??? t??n</label>
                                        <input type="text" class="form-control" id="exampleInputName1"
                                               placeholder="Nh???p h??? t??n" value="${customer.getFullName()}" name="name">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleTextarea1">username</label>
                                        <input class="form-control" disabled id="exampleTextarea1" rows="4"
                                               value="${customer.getAccount().getUserName()}" name="username"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputName1">Vai tr??</label>
                                        <select class="form-control" id="exampleSelectGender" style="cursor: pointer;" name="typeAccount">
                                            <c:forEach var="typeAccount" items="${typeAccounts}">
                                                <option value="${typeAccount.getId()}">${typeAccount.getTypeName()}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <button type="submit" class="btn btn-icon-text btn-gradient-info mr-2 btn-submit"><i
                                            class="btn-icon-prepend fas fa-paper-plane"></i>S???a th??ng tin
                                    </button>
                                    <a href="/admin?actionUser=customer"><button type="button" class="btn btn-icon-text btn-gradient-dark btn-reset">Quay l???i
                                    </button></a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </c:if>
            <c:if test="${action.equals('add')}">
            <div class="row">
                <div class="col-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Th??m ng?????i d??ng</h4>
                            <br>
                            <form class="forms-sample" method="post" action="/admin?actionUser=add">
                                <div class="form-group">
                                    <label for="inputName">H??? t??n</label>
                                    <input type="text" class="form-control" id="inputName"
                                           placeholder="Nh???p h??? t??n" name="name">
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail">Email</label>
                                    <input type="email" class="form-control" id="inputEmail"
                                           placeholder="Nh???p h??? t??n" name="email">
                                </div>
                                <div class="form-group">
                                    <label for="inputUserName">Username</label>
                                    <input class="form-control"  id="inputUserName" rows="4" placeholder="Nh???p t??n ng?????i d??ng" name="username"/>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword">Password</label>
                                    <input type="password" class="form-control" id="inputPassword" rows="4" name="psw"/>
                                </div>
                                <button type="submit" class="btn btn-icon-text btn-gradient-info mr-2 btn-submit"><i
                                        class="btn-icon-prepend fas fa-paper-plane"></i>Th??m
                                </button>
                                <button type="reset" class="btn btn-icon-text btn-gradient-dark btn-reset"><i
                                        class=" btn-icon-prepend fas fa-redo-alt"></i>?????t l???i
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </c:if>
            <!-- content-wrapper ends -->
            <!-- partial:../../partials/_footer.html -->
            <!-- partial -->
        </div>
        <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<script src="../js/admin.js"></script>
</body>
</html>
