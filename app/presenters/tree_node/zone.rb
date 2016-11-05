module TreeNode
  class Zone < Node
    set_attribute(:image, '100/zone.png')
    set_attributes(:title, :tooltip) do
      if @options[:is_current]
        tooltip = "#{ui_lookup(:model => @object.class.to_s)}: #{@object.description} (#{_('current')})"
        title   = "<strong>#{ERB::Util.html_escape(tooltip)}</strong>".html_safe
      else
        title   = "#{ui_lookup(:model => @object.class.to_s)}: #{@object.description}"
        tooltip = title
      end
      [title, tooltip]
    end
  end
end
