module Admin
  class CategoriesController < BaseController
    before_action :set_category, only: %i[show edit update destroy]

    # GET /categories or /categories.json
    def index
      @categories = Category.all
    end

    # GET /categories/1 or /categories/1.json
    def show; end

    # GET /categories/new
    def new
      @category = Category.new
    end

    # GET /categories/1/edit
    def edit; end

    # POST /categories or /categories.json
    def create
      @category = Category.new(category_params)

        if @category.save
          redirect_to admin_categories_path(@category), notice: 'Categoria criado com sucesso.'
        else
          render :new, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /categories/1 or /categories/1.json
    def update
      if @category.update(category_params)
        redirect_to admin_categories_path(@category), notice: 'Categoria atualizado com sucesso.'
      else
        render :edit, status: :unprocessable_entity
      end
    end

    # DELETE /categories/1 or /categories/1.json
    def destroy
      @category.destroy

      respond_to do |format|
        format.html { redirect_to admin_categories_path, notice: 'Categoria excluída com sucesso.' }
      end
    end

    private

    def set_category
      @category = Category.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:name, :position)
    end
  end
end
