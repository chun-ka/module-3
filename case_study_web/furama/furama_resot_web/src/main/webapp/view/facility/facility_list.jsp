<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 09/11/2022
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<div class="container-fluid">
    <div class="row" style="background-color: whitesmoke">
        <div class="col ">
            <a href="https://furamavietnam.com/vi/">
                <img style="width: 170px;height: 120px;margin-left: 100px"
                     src="https://static.topcv.vn/company_logos/oruz4IPeY3cyRu9HaWwRFrSdfWfDnw60_1635916800____08c8e444e64ab28b2cef44fb69347361.png">
            </a>
        </div>
        <div class="col ">
            <a href="https://www.tripadvisor.com/Hotel_Review-g298085-d302750-Reviews-Furama_Resort_Danang-Da_Nang.html">
                <img style="width: 150px;height: 100px;margin-top: 10px"
                     src="https://www.kindpng.com/picc/m/606-6060823_trip-advisor-graphic-design-hd-png-download.png">
            </a>
        </div>
        <div class="col ">
            <a style="text-decoration: none"
               href="https://www.google.com/maps/place/Furama+Resort+Danang/@16.0399456,108.2488741,17z/data=!3m1!4b1!4m8!3m7!1s0x31420fdbc8cc38ef:0x9a6a3e31121225d2!5m2!4m1!1i2!8m2!3d16.0399456!4d108.2510681?hl=vi-VN">
                <p style="width: 70%;"><img style="width: 30px;height: 30px;margin-top: 10px;"
                                            src="https://png.pngtree.com/png-clipart/20190924/original/pngtree-location-icon-for-your-project-png-image_4853602.jpg">
                    103 – 105 Đường Võ Nguyên Giáp, Phường Khuê Mỹ, Quận Ngũ hành Sơn, Tp. Đà Nẵng, Việt Nam
                </p>
            </a>
        </div>
        <div class="col">
            <p><img style="width: 30px;height: 30px;margin-top: 15px"
                    src="https://media.istockphoto.com/vectors/telephone-icon-logo-vector-id1279896450">
                84-236-3847 333/888</p>
            <p><img style="width: 30px;height: 30px"
                    src="https://image.shutterstock.com/image-vector/mail-logo-260nw-468389300.jpg">
                reservation@furamavietnam.com</p>
        </div>
    </div>
</div>

<div class="row">
    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg navbar-light bg-light" style="padding: 0;line-height: 50px">
            <div class="container-fluid" style="background-color:#218c74">
                <a class="navbar-brand a" href="http://localhost:63342/furama_resort/src/furama_html/furama_home/furama_home.html?_ijt=tn6shkd0ptjafhodjhaqbrrpr3&_ij_reload=RELOAD_ON_SAVE" style="margin-left: 100px;color: white">Home</a>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active a" aria-current="page" href="http://localhost:63342/furama_resort/src/furama_html/furama_home/employee_list.html?_ijt=9n7qmdp88qu8atl2f0k98didip&_ij_reload=RELOAD_ON_SAVE"
                               style="margin-left: 60px;color: white">Employee</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link a" href="http://localhost:63342/furama_resort/src/furama_html/furama_home/customer_list.html?_ijt=1d6quhhqiagerh3fs1k5t2facv&_ij_reload=RELOAD_ON_SAVE" style="color: white;margin-left: 60px">Customer</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link a" href="" style="color: white;margin-left: 60px">Service</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled a" style="color: white;margin-left: 60px">Contract</a>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-primary" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
    </div>
</div>
<div class="row">
    <div class="col" style="background-color: gainsboro;margin-top: 5px;">
        <h1 style="display: inline;margin-left: 660px">Facility Service</h1>
        <button type="button" class="btn btn-primary" style="margin-left: 550px;margin-bottom: 10px" >Add New</button>
    </div>
</div>
<div>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Area</th>
            <th scope="col">Cost double</th>
            <th scope="col">Max people</th>
            <th scope="col">RentTypeId</th>
            <th scope="col">FacilityTypeId</th>
            <th scope="col">StandardRoom</th>
            <th scope="col">DescriptionOtherConvenience</th>
            <th scope="col">PoolArea</th>
            <th scope="col">NumberOfFloors</th>
            <th scope="col">FacilityFree</th>
            <th scope="col"></th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>Mark</td>
            <td>Otto</td>
            <td><button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal">
                Edit
            </button>
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Edit</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                ...
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div></td>

            <td><button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                Delete
            </button>
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel">Delete</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form action="">...</form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                                <button type="button" class="btn btn-primary">Yes</button>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
        </tbody>
    </table>

</div>
</body>
</html>
