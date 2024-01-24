<div class="container-fluid">

	<div class="row mb-4">
		<div class="col-6 col-lg-3">
			<div class="card">
				<div class="card-body p-3 d-flex align-items-center">
					<div class="bg-primary text-white p-3 me-3">
						<svg class="icon icon-xl">
							<use xlink:href="<?= base_url('public/') ?>vendors/@coreui/icons/svg/free.svg#cil-settings"></use>
						</svg>
					</div>
					<div>
						<div class="fs-6 fw-semibold text-primary"><?= ($total_finished) ? $total_finished : '0' ?></div>
						<div class="text-medium-emphasis text-uppercase fw-semibold small">Finished</div>
					</div>
				</div>
				<div class="card-footer px-3 py-2"><a class="btn-block text-medium-emphasis d-flex justify-content-between align-items-center" href="#"><span class="small fw-semibold">View More</span>
						<svg class="icon">
							<use xlink:href="<?= base_url('public/') ?>vendors/@coreui/icons/svg/free.svg#cil-chevron-right"></use>
						</svg></a></div>
			</div>
		</div>
		<!-- /.col-->
		<div class="col-6 col-lg-3">
			<div class="card">
				<div class="card-body p-3 d-flex align-items-center">
					<div class="bg-info text-white p-3 me-3">
						<svg class="icon icon-xl">
							<use xlink:href="<?= base_url('public/') ?>vendors/@coreui/icons/svg/free.svg#cil-laptop"></use>
						</svg>
					</div>
					<div>
						<div class="fs-6 fw-semibold text-info">$1.999,50</div>
						<div class="text-medium-emphasis text-uppercase fw-semibold small">Widget title</div>
					</div>
				</div>
				<div class="card-footer px-3 py-2"><a class="btn-block text-medium-emphasis d-flex justify-content-between align-items-center" href="#"><span class="small fw-semibold">View More</span>
						<svg class="icon">
							<use xlink:href="<?= base_url('public/') ?>vendors/@coreui/icons/svg/free.svg#cil-chevron-right"></use>
						</svg></a></div>
			</div>
		</div>
		<!-- /.col-->
		<div class="col-6 col-lg-3">
			<div class="card">
				<div class="card-body p-3 d-flex align-items-center">
					<div class="bg-warning text-white p-3 me-3">
						<svg class="icon icon-xl">
							<use xlink:href="<?= base_url('public/') ?>vendors/@coreui/icons/svg/free.svg#cil-moon"></use>
						</svg>
					</div>
					<div>
						<div class="fs-6 fw-semibold text-warning"><?= ($total_progress) ? $total_progress : '0' ?></div>
						<div class="text-medium-emphasis text-uppercase fw-semibold small">On Progress</div>
					</div>
				</div>
				<div class="card-footer px-3 py-2"><a class="btn-block text-medium-emphasis d-flex justify-content-between align-items-center" href="#"><span class="small fw-semibold">View More</span>
						<svg class="icon">
							<use xlink:href="<?= base_url('public/') ?>vendors/@coreui/icons/svg/free.svg#cil-chevron-right"></use>
						</svg></a></div>
			</div>
		</div>
		<!-- /.col-->
		<div class="col-6 col-lg-3">
			<div class="card">
				<div class="card-body p-3 d-flex align-items-center">
					<div class="bg-danger text-white p-3 me-3">
						<svg class="icon icon-xl">
							<use xlink:href="<?= base_url('public/') ?>vendors/@coreui/icons/svg/free.svg#cil-bell"></use>
						</svg>
					</div>
					<div>
						<div class="fs-6 fw-semibold text-danger"> <?= ($total_progress) ? $total_waiting : '0' ?></div>
						<div class="text-medium-emphasis text-uppercase fw-semibold small">Waiting</div>
					</div>
				</div>
				<div class="card-footer px-3 py-2"><a class="btn-block text-medium-emphasis d-flex justify-content-between align-items-center" href="#"><span class="small fw-semibold">View More</span>
						<svg class="icon">
							<use xlink:href="<?= base_url('public/') ?>vendors/@coreui/icons/svg/free.svg#cil-chevron-right"></use>
						</svg></a></div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-12">
			<div class="card mb-4">
				<div class="card-header">Permintaan Pekerjaan</div>
					<div class="card-body">
						<div class="row">
							<div class="table-responsive">
								<!-- <table id="dataTableDashboard1" class="table table-bordered table-striped table-hover"> -->
								<table id="dataTableDashboard1" class="table table-striped border">
									<thead class="table-ligsht fw-semibold">
										<tr class="align-middle">
											<th>No</th>
											<th>Dari</th>
											<th>Tanggal</th>
											<th>Departemen</th>
											<th>Catatan</th>
											<th>Status</th>
											<th>Aksi</th>
										</tr>
									</thead>
									<tbody>
										<?php
										if ($d_permintaan) {
											foreach ($d_permintaan as $d) { ?>
												<tr>
													<td><?php echo $d->id_permintaan; ?></td>
													<td><?php echo $d->dari; ?></td>
													<td><?php echo $d->tanggal; ?></td>
													<td><?php echo $d->departemen; ?></td>
													<td><?php echo $d->catatan; ?></td>
													<td>
														<?php if ($d->status == "Waiting") { ?>
															<span class="label label-lg label-danger">Waiting</span>
														<?php } elseif ($d->status == "On Progress") { ?>
															<span class="label label-warning">On Progress</span>
														<?php } else { ?>
															<span class="label label-success">Finished</span>
														<?php } ?>
													</td>
													<td>
														<?php if ($d->status == "Waiting") { ?>
															<a class="btn btn-xs btn-info" href="<?php echo base_url() . 'permintaan/identifikasi/' . $d->id_permintaan ?>" rel="tooltip" title="Identifikasi"><i class="fa fa-wrench"></i></a>
														<?php } elseif ($d->status == "On Progress") { ?>
															<a class="btn btn-warning btn-sm text-white" href="<?php echo base_url() . 'identifikasi/solusi/' . $d->id_permintaan ?>" rel="tooltip" title="Selesaikan"><span class="cil-check"></span></a>
															<a class="btn btn-info btn-sm text-white" href="<?php echo base_url() . 'identifikasi/update/' . $d->id_permintaan ?>" rel="tooltip" title="Update"><span class="cil-clock"></span></a>
														<?php } else { ?>
															<a class="btn btn-primary btn-sm text-white" href="<?php echo base_url() . 'dashboard/lihat/' . $d->id_permintaan ?>" rel="tooltip" title="Lihat"><span class="cil-search"></span></a>
														<?php } ?>
													</td>
												</tr>
										<?php
											}
										} ?>
									</tbody>
								</table>
							</div>
						</div>
					</div>
			</div>
		</div>
	</div>

</div>
