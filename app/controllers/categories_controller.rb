class CategoriesController < ApiController
  before_action :require_login
  skip_before_action :verify_authenticity_token

	def index
		@categories = Category.all
		render json: @categories
	end

	def create
		@category = Category.new(post_params)
		if @category.save
      render json: @category, status: :created#, meta: default_meta
  	else
      rendered_format(@Category, :unprocessable_entity)
    end
	end

	def paginate_data(obj)
		puts params[:page]
		puts "pageeee"
    obj.paginate(page: params[:page], per_page: 2)
  end

	def destroy

	end

	private
	def post_params
		params.require(:category).permit(:name, :details)
	end
end
