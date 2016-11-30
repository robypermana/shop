<!DOCTYPE html>
<html>
<head>
	<title>RBK Distributor</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/vendor.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/flat-admin.css">

</head>

<body>
	<div class="app app-default">
		<aside class="app-sidebar" id="sidebar">
			<div class="sidebar-header">
				<a class="sidebar-brand" href="#"><span class="highlight">RBK</span> Distributor</a>
				<button type="button" class="sidebar-toggle">
					<i class="fa fa-times"></i>
				</button>
			</div>
			<div class="sidebar-menu">
				<ul class="sidebar-nav">
					<li class="">
						<a href="<?php echo base_url()."dashboard" ?>">
							<div class="icon">
								<i class="fa fa-tasks" aria-hidden="true"></i>
							</div>
							<div class="title">Dashboard</div>
						</a>
					</li>
					<li class="">
						<a href="<?php echo base_url()."users" ?>">
							<div class="icon">
								<i class="fa fa-users" aria-hidden="true"></i>
							</div>
							<div class="title">User</div>
						</a>
					</li>
				</ul>
			</div>
		</aside>

		<script type="text/ng-template" id="sidebar-dropdown.tpl.html">
			<div class="dropdown-background">
				<div class="bg"></div>
			</div>
			<div class="dropdown-container">
				{{list}}
			</div>
		</script>

		<div class="app-container">

	<nav class="navbar navbar-default" id="navbar">
	<div class="container-fluid">
			<div class="navbar-collapse collapse in">
				<ul class="nav navbar-nav navbar-mobile">
					<li>
						<button type="button" class="sidebar-toggle">
							<i class="fa fa-bars"></i>
						</button>
					</li>
					<li class="logo">
						<a class="navbar-brand" href="#"><span class="highlight">Flat v3</span> Admin</a>
					</li>
					<li>
						<button type="button" class="navbar-toggle">
							<img class="profile-img" src="<?php echo base_url(); ?>assets/images/profile.png">
						</button>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-left">
					<li class="navbar-title">Dashboard</li>
					<li class="navbar-search hidden-sm">
						<input id="search" type="text" placeholder="Search..">
						<button class="btn-search"><i class="fa fa-search"></i></button>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown notification">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<div class="icon"><i class="fa fa-shopping-basket" aria-hidden="true"></i></div>
							<div class="title">New Orders</div>
							<div class="count">0</div>
						</a>
						<div class="dropdown-menu">
							<ul>
								<li class="dropdown-header">Ordering</li>
								<li class="dropdown-empty">No New Ordered</li>
								<li class="dropdown-footer">
									<a href="#">View All <i class="fa fa-angle-right" aria-hidden="true"></i></a>
								</li>
							</ul>
						</div>
					</li>
					<li class="dropdown notification warning">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<div class="icon"><i class="fa fa-comments" aria-hidden="true"></i></div>
							<div class="title">Unread Messages</div>
							<div class="count">99</div>
						</a>
						<div class="dropdown-menu">
							<ul>
								<li class="dropdown-header">Message</li>
								<li>
									<a href="#">
										<span class="badge badge-warning pull-right">10</span>
										<div class="message">
											<img class="profile" src="<?php echo base_url(); ?>assets/images/profile.png">
											<div class="content">
												<div class="title">"Payment Confirmation.."</div>
												<div class="description">Alan Anderson</div>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<span class="badge badge-warning pull-right">5</span>
										<div class="message">
											<img class="profile" src="<?php echo base_url(); ?>assets/images/profile.png">
											<div class="content">
												<div class="title">"Hello World"</div>
												<div class="description">Marco  Harmon</div>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<span class="badge badge-warning pull-right">2</span>
										<div class="message">
											<img class="profile" src="https://placehold.it/100x100">
											<div class="content">
												<div class="title">"Order Confirmation.."</div>
												<div class="description">Brenda Lawson</div>
											</div>
										</div>
									</a>
								</li>
								<li class="dropdown-footer">
									<a href="#">View All <i class="fa fa-angle-right" aria-hidden="true"></i></a>
								</li>
							</ul>
						</div>
					</li>
					<li class="dropdown notification danger">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<div class="icon"><i class="fa fa-bell" aria-hidden="true"></i></div>
							<div class="title">System Notifications</div>
							<div class="count">10</div>
						</a>
						<div class="dropdown-menu">
							<ul>
								<li class="dropdown-header">Notification</li>
								<li>
									<a href="#">
										<span class="badge badge-danger pull-right">8</span>
										<div class="message">
											<div class="content">
												<div class="title">New Order</div>
												<div class="description">$400 total</div>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<span class="badge badge-danger pull-right">14</span>
										Inbox
									</a>
								</li>
								<li>
									<a href="#">
										<span class="badge badge-danger pull-right">5</span>
										Issues Report
									</a>
								</li>
								<li class="dropdown-footer">
									<a href="#">View All <i class="fa fa-angle-right" aria-hidden="true"></i></a>
								</li>
							</ul>
						</div>
					</li>
					<li class="dropdown profile">
						<a href="#" class="dropdown-toggle"  data-toggle="dropdown">
							<img class="profile-img" src="<?php echo base_url(); ?>assets/images/profile.png">
							<div class="title">Profile</div>
						</a>
						<div class="dropdown-menu">
							<div class="profile-info">
								<h4 class="username"><?php echo $this->session->userdata('username'); ?></h4>
							</div>
							<ul class="action">
								<li>
									<a href="<?php echo base_url()."auth/logout"; ?>">
										Logout
									</a>
								</li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	