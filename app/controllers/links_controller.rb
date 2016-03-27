class LinksController < InheritedResources::Base

  private

    def link_params
      params.require(:link).permit(:data, :post_id_id)
    end
end

