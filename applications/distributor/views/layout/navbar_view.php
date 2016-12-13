<!-- Left side column. contains the sidebar -->
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="<?php echo base_url()?>assets/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p><?php echo $this->session->userdata('username') ?></p>
				<i class="fa fa-circle text-success"></i> Online
			</div>
		</div>
		<!-- search form -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control" placeholder="Search...">
						<span class="input-group-btn">
							<button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
							</button>
						</span>
			</div>
		</form>
		<!-- /.search form -->
		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">MAIN NAVIGATION</li>
			<li>
				<a href="<?php echo base_url().'dashboard' ?>">
					<i class="fa fa-dashboard"></i> <span>Dashboard</span>
				</a>
			</li>
			<li>
				<a href="<?php echo base_url().'users' ?>">
					<i class="fa fa-users"></i> <span>Users</span>
				</a>
			</li>
			<li>
				<a href="<?php echo base_url().'packages' ?>">
				<i class="fa fa-credit-card"></i> <span>Packages</span>
				</a>
			</li>
			<li>
				<a href="<?php echo base_url().'order' ?>">
				<i class="fa fa-cart-arrow-down"></i> <span>Order</span>
				</a>
			</li>

		</ul>
	</section>
	<!-- /.sidebar -->
</aside>