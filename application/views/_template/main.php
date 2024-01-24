<?php $this->load->view('_template/header', TRUE) ?>

<?php $this->load->view('_template/sidebar', TRUE) ?>

<?php $this->load->view('_template/topbar', TRUE) ?>
	


<div class="body flex-grow-1 px-3">

	<?= $content ?>

</div>


<?php $this->load->view('_template/footer', TRUE) ?>
