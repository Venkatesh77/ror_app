class ProjectsController < ApiController
  before_action :require_login

  skip_before_action :verify_authenticity_token

	def index
		projects = Project.all
		@projects= paginate_data(projects)

		project_ids = Array.new()
		@projects.each do |i|
			project_ids << i
		end
		render json: @projects ,include:  [ 'user.name', 'category.name' ]  # include: 'user,category'
	end

	def create
		@project = Project.new(post_params)
		if @project.save
      render json: @project, status: :created#, meta: default_meta
  	else
      #  rendered_format(@project, :unprocessable_entity)
      #  rendered_format(@project.errors.full_messages)
      render json: {status: "not saved"}
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
		params.require(:project).permit( :title, :description, :details, :user_id, :category_id)
	end
end
