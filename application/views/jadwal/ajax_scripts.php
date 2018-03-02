
<footer class="main-footer hidden-print">
  <div class="pull-right hidden-xs">
    <b>Version</b> v1.1.9 - build 3124 (master)
    <a target="_blank" class="btn btn-default btn-xs" href="http://zdienos.com" rel="noopener">User's Manual</a>
    <a target="_blank" class="btn btn-default btn-xs" href="https://zdienos.com/support" rel="noopener">Report a Bug</a>
  </div>
  <a target="_blank" href="https://zdienos.com" rel="noopener">Help-IT</a> is a personal
    project, made with <i class="fa fa-heart" style="color: #a94442; font-size: 10px"></i> by <a href="https://twitter.com/zdienos" rel="noopener">@zdienos</a>.
</footer>
</div> <!-- wrapper -->

<!-- all js scripts
khusus buat fullcalendar, karena versi ini bisa resize, kalo versi baru ndak support jquery 1.11
-->
<script src="<?php echo base_url();?>assets/zed/js/jquery.min.js"></script>

<script src='<?php echo base_url();?>assets/zed/js/moment.min.js'></script>
<script src="<?php echo base_url();?>assets/zed/js/fullcalendar.min.js"></script>
<script src='<?php echo base_url();?>assets/zed/js/bootstrap-colorpicker.min.js'></script>

<script src="<?php echo base_url();?>assets/zed/js/bootstrapValidator.min.js"></script>

<!-- all scripts -->


<!-- script adminLTE bawaan -->



<!-- jQuery UI 1.11.4 -->
<script src="<?php echo base_url();?>assets/jquery-ui/jquery-ui.min.js"></script>

<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
$.widget.bridge('uibutton', $.ui.button);
</script>

<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url();?>assets/bootstrap/js/bootstrap.min.js"></script>

<!-- AdminLTE App -->
<script src="<?php echo base_url();?>assets/adminLTE/js/adminlte.min.js"></script>

<!-- sweetalert -->
<script src="<?php echo base_url();?>assets/sweetalert/sweetalert.min.js"></script>

<!-- end of scripts -->


<!-- fullcalendar -->
<script>

$(document).ready(function(){

    <?php $lokasi= base_url(); $nama = $this->session->userdata('nama_user');?>
    <?php $disable_edit = base_url('jadwal');?>
    <?php $enable_edit = base_url('jadwal/edit');?>
    var enable_edit = "<?php echo $enable_edit ?>";
    var disable_edit = "<?php echo $disable_edit ?>";
    var base_url= "<?php echo $lokasi ?>"; // Here i define the base_url

    $('#calendar').fullCalendar({
        header: {
            left: 'prev, next',
            center: 'title',
             right: 'today'
        },
        // Get all events stored in database
        eventLimit: true, // allow "more" link when too many events
        events: base_url+'jadwal/getEvents',
        firstDay: 1,
        fixedWeekCount: false,
        selectable: true,
        selectHelper: true,
        editable: false,
        // Event Mouseover
        eventMouseover: function(calEvent, jsEvent, view){

            var tooltip = '<div class="event-tooltip">' + calEvent.description + '</div>';
            $("body").append(tooltip);

            $(this).mouseover(function(e) {
                $(this).css('z-index', 10000);
                $('.event-tooltip').fadeIn('500');
                $('.event-tooltip').fadeTo('10', 1.9);
            }).mousemove(function(e) {
                $('.event-tooltip').css('top', e.pageY + 10);
                $('.event-tooltip').css('left', e.pageX + 20);
            });
        },
        eventMouseout: function(calEvent, jsEvent) {
            $(this).css('z-index', 8);
            $('.event-tooltip').remove();
        }
      });

    $('#drop-remove').change(function() {
        if(this.checked) {
           window.location.href= enable_edit
          }
        else {
           window.location.href=disable_edit
         } //else
     }); //drop-remove function

}); //main function

</script>
