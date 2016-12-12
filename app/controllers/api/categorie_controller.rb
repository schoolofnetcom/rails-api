class Api::CategorieController < Api::BaseController
    protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
    before_action :authenticate_user!
    def index
        @categories = Categorie.all

        respond_to do |format|
            format.json { render json: @categories }
        end
    end

    def create
        @categorie = Categorie.create(categorie_params)

        respond_to do |format|
            format.json { render json: @categorie }
        end
    end

    def destroy
        @categorie = Categorie.find(params[:id])

        @categorie.destroy

        respond_to do |format|
            format.json { render json: @categorie }
            # format.json { head :no_content }
        end
    end

    private
        def categorie_params
            params.require(:categorie).permit(:name)
        end
end
