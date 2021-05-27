<div class="navbar navbar-inverse set-radius-zero" >
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand">

                    <img src="assets\img\logo.png" />
                </a>

            </div>

            <div class="right-div">
                <a href="logout.php" class="btn btn-danger pull-right">LOGOUT</a>
            </div>
        </div>
    </div>
    <!-- LOGO HEADER END-->
    <section class="menu-section">
        <div class="container">
            <div class="row ">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="dashboard.php" class="menuitem">DASHBOARD</a></li>
                            <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown"> Events <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="add-event.php"> Add Events </a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="manage-event.php"> Manage Events </a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="add-category.php"> Add Category </a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="manage-categories.php"> Manage Categories </a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="add-judge.php"> Add Judge </a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="manage-judge.php"> Manage Judge </a></li>

                                </ul>
                            </li>

                           <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown"> Assign Events <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="assign-new-event.php"> Assign New Event </a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="manage-assigned-events.php"> Manage Assigned Events </a></li>
                                </ul>
                            </li>
                             <li><a href="reg-participants.php"> Manage Participants </a></li>
                             <li><a href="dashboard.php" class="menuitem">UPDATE WINNERS</a></li>
                             <li><a href="change-password.php"> Change Password </a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>