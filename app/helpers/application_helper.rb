module ApplicationHelper
    def sortable(column, title=nil)
        title = column.titleize
        if params[:sort]
            css_class = column == params[:sort]? "hilite bg-warning":nil
        else
            if session[:sort]
                css_class = column == session[:sort]? "hilite bg-warning":nil
            end
        end
        link_to title, {:sort => column}, {:class => css_class}
    end
        
end
