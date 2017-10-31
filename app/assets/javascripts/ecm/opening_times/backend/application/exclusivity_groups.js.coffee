$ ->
  $('body').on 'click', '*[data-disables]', (e)->
    inputs_to_toggle = $(this).data('disables')
    if $(this).is(':checked')
      for input in $(inputs_to_toggle)
        # disable input
        $(input).prop('disabled', true);
        # unset name
        $(input).data('name', $(input).attr('name'))
        $(input).removeAttr('name')
        # unset value
        $(input).data('value', $(input).attr('value'))
        $(input).removeAttr('value')        
    else
      for input in $(inputs_to_toggle)
        # enable input
        $(input).prop('disabled', false);
        # set name
        $(input).attr('name', $(input).data('name'))
        $(input).removeData('name')
        # set value
        $(input).attr('value', $(input).data('value'))
        $(input).removeData('value')
#class DataExclusivityGrouping
#  constructor: (@container) ->
#    bindClickEvent
#
#  bindClickEvent: =>
#    @container.o
#    alert('test')

# $ ->
#   $('body').on 'click', '*[data-exclusivity-group] *', (e)->
#     # DataExclusivityGrouping.new(this)
#     own_container = $(this).closest("*[data-exclusivity-group]")
#     group_name = own_container.data('exclusivity-group')
#     all_containers = $("*[data-exclusivity-group='#{group_name}']")
#     for container in all_containers
#       if container == own_container[0]
#         console.log("same")
#         console.log($(container))
#         for input in $(container).find('input')
#           # enable input
#           $(input).prop('disabled', false);
#           # set name
#           $(input).attr('name', $(input).data('name'))
#           $(input).removeData('name')
#           # set value
#           $(input).attr('value', $(input).data('value'))
#           $(input).removeData('value')
#       else
#         console.log("other")
#         console.log($(container))
#         for input in $(container).find('input')
#           # disable input
#           $(input).prop('disabled', true);
#           # unset name
#           $(input).data('name', $(input).attr('name'))
#           $(input).removeAttr('name')
#           # unset value
#           $(input).data('value', $(input).attr('value'))
#           $(input).removeAttr('value')