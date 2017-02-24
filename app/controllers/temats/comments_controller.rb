class Temats::CommentsController < CommentsController
  before_action :set_commentable

  private

    def set_commentable
      @commentable = Temat.find(params[:temat_id])
    end
end
