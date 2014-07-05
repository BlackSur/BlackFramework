(function($) {

    $.blackForm = function(form, options) {

        var defaults = {
            foo: 'bar',
            savedElementsOptions: [],
            onFoo: function() {}
        }

        var plugin = this;

        plugin.settings = {}

        var $thisForm = $(form);

        plugin.init = function() {
            plugin.settings = $.extend({}, defaults, options);

            var $selectFillOthers = $thisForm.find('select[data-fillothers]').each(function( index ) {
                var $this = $(this);
                plugin.fillOthers($this);

                $this.change(function() {
                    plugin.fillOthers($this);

                });

            });
        }

        //public
        plugin.fillOthers = function(element) {
            $.each(element.data('fillothers'), function(optionToChoose, allElementsToFill) {
                // console.log(plugin.settings);
                // console.log(allElementsToFill);
                // console.log(optionToChoose);
                var elementValue = element.val();
                if (optionToChoose === elementValue) {
                    console.log('-----rellenando PARA..' + optionToChoose);


                    $.each(allElementsToFill, function(elementNameToFill, optionsForElement) {
                        var $elementToFill = $('[name="' + elementNameToFill + '"]');

                        // if ($elementToFill.length < 0) {
                        //     $elementToFill = $("<select name='" + elementNameToFill + "' />");
                        //     element.append($elementToFill);
                        // }

                        var $elementToFillOptions = $elementToFill.find('option');
                        var selectedOptionKey = $elementToFill.find('option:selected').val();
                        console.warn(selectedOptionKey);
                        if (undefined === plugin.settings.savedElementsOptions[elementNameToFill]) {
                            plugin.settings.savedElementsOptions[elementNameToFill] = $elementToFillOptions;
                        }
                        $elementToFillOptions.remove();
                        $.each(optionsForElement, function(optionKey, optionValue) {
                            $elementToFill.append($("<option />").val(optionKey).text(optionValue));
                        });
                    });


                } else {
                    // console.log('me llamaste???');
                    // $.each(allElementsToFill, function(elementNameToFill, optionsForElement) {
                    //     if (undefined !== plugin.settings.savedElementsOptions[elementNameToFill]) {
                    //         var $elementToFill = $('[name="' + elementNameToFill + '"]');
                    //         var $elementToFillOptions = $elementToFill.find('option');
                    //         $elementToFillOptions.remove();
                    //         $.each(plugin.settings.savedElementsOptions[elementNameToFill], function(optionKey, optionValue) {
                    //             $elementToFill.append(this);
                    //         });
                    //     }
                    // });

                }

            });
        }

        //private
        var foo_private_method = function() {
            // code goes here
        }

        plugin.init();

    }

    $.fn.blackForm = function(options) {

        return this.each(function() {
            if (undefined == $(this).data('blackForm')) {
                var plugin = new $.blackForm(this, options);
                $(this).data('blackForm', plugin);
            }
        });

    }

})(jQuery);
