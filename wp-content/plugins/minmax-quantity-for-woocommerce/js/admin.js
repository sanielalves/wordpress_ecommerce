var br_saved_timeout;
var br_savin_ajax = false;
(function ($){
    $(document).ready( function () {
        $('.mm_quantity_submit_form').submit( function(event) {
            event.preventDefault();
            $('.quantity_groups_group').each(function( i, o ) {
                if( ! $(o).find('.quantity_groups_name').val() ) {
                    $(o).remove();
                } else {
                    $(o).find('input').each(function( input_i, input_o ) {
                        $(input_o).attr('name', 'br_mm_quantity_options[groups]['+i+']['+$(input_o).data('name')+']');
                    });
                }
            });
            if( !br_savin_ajax ) {
                br_savin_ajax = true;
                var form_data = $(this).serialize();
                form_data = 'action=br_mm_quantity_settings_save&'+form_data;
                var url = ajaxurl;
                clearTimeout(br_saved_timeout);
                destroy_br_saved();
                $('body').append('<span class="br_saved br_saving"><i class="fa fa-refresh fa-spin"></i></span>');
                $.post(url, form_data, function (data) {
                    if($('.br_saved').length > 0) {
                        $('.br_saved').removeClass('br_saving').find('.fa').removeClass('fa-spin').removeClass('fa-refresh').addClass('fa-check');
                    } else {
                        $('body').append('<span class="br_saved"><i class="fa fa-check"></i></span>');
                    }
                    br_saved_timeout = setTimeout( function(){destroy_br_saved();}, 5000 );
                    br_savin_ajax = false;
                }, 'json').fail(function() {
                    if($('.br_saved').length > 0) {
                        $('.br_saved').removeClass('br_saving').addClass('br_not_saved').find('.fa').removeClass('fa-spin').removeClass('fa-refresh').addClass('fa-times');
                    } else {
                        $('body').append('<span class="br_saved br_not_saved"><i class="fa fa-times"></i></span>');
                    }
                    br_saved_timeout = setTimeout( function(){destroy_br_saved();}, 5000 );
                    $('.br_save_error').html(data.responseText);
                    br_savin_ajax = false;
                });
            }
        });
        function destroy_br_saved() {
            $('.br_saved').addClass('br_saved_remove');
            var $get = $('.br_saved');
            setTimeout( function(){$get.remove();}, 200 );
        }
        $(window).on('keydown', function(event) {
            if (event.ctrlKey || event.metaKey) {
                switch (String.fromCharCode(event.which).toLowerCase()) {
                case 's':
                    event.preventDefault();
                    $('.mm_quantity_submit_form').submit();
                    break;
                }
            }
        });
        $('.br_settings .nav-tab').click(function(event) {
            event.preventDefault();
            $('.nav-tab-active').removeClass('nav-tab-active');
            $('.nav-block-active').removeClass('nav-block-active');
            $(this).addClass('nav-tab-active');
            $('.'+$(this).data('block')+'-block').addClass('nav-block-active');
        });
        $(document).on('change', '.br_minmax_min_prc_input', function() {
            var $parents = $(this).parents('tr').first();
            var max_prc = $parents.find('.br_minmax_max_prc_input');
            if( parseInt(max_prc.val())  < parseInt($(this).val()) ) {
                $(this).val(max_prc.val());
            }
        });
        $(document).on('change', '.br_minmax_max_prc_input', function() {
            var $parents = $(this).parents('tr').first();
            var min_prc = $parents.find('.br_minmax_min_prc_input');
            if( parseInt(min_prc.val()) > parseInt($(this).val()) ) {
                $(this).val(min_prc.val());
            }
        });
        $(document).on('change', '.br_minmax_min_qty_input', function() {
            var $parents = $(this).parents('tr').first();
            var max_prc = $parents.find('.br_minmax_max_qty_input');
            if( parseInt(max_prc.val())  < parseInt($(this).val()) ) {
                $(this).val(max_prc.val());
            }
        });
        $(document).on('change', '.br_minmax_max_qty_input', function() {
            var $parents = $(this).parents('tr').first();
            var min_prc = $parents.find('.br_minmax_min_qty_input');
            if( parseInt(min_prc.val()) > parseInt($(this).val()) ) {
                $(this).val(min_prc.val());
            }
        });
    });
})(jQuery);
