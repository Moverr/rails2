class HelloController < ApplicationController
    before_action :set_hello, only: [:show, :edit, :update, :destroy]

    # GET /users
    # GET /users.json
    def index
      @users = Hello.all
    end
  
    # GET /users/1
    # GET /users/1.json
    def show
    end
  
    # GET /users/new
    def new
      @user = Hello.new
    end
  
    # GET /users/1/edit
    def edit
    end
  
    # POST /users
    # POST /users.json
    def create
      @user = Hello.new(hello_params)
  
      respond_to do |format|
        if @user.save
          format.html { redirect_to @hello, notice: 'User was successfully created.' }
          format.json { render :show, status: :created, location: @hello }
        else
          format.html { render :new }
          format.json { render json: @hello.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /users/1
    # PATCH/PUT /users/1.json
    def update
      respond_to do |format|
        if @user.update(hello_params)
          format.html { redirect_to @hello, notice: 'hello was successfully updated.' }
          format.json { render :show, status: :ok, location: @hello }
        else
          format.html { render :edit }
          format.json { render json: @hello.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /users/1
    # DELETE /users/1.json
    def destroy
      @hello.destroy
      respond_to do |format|
        format.html { redirect_to hello_url, notice: 'User was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = Hello.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def user_params
        params.require(:hello).permit(:name, :email)
      end
end
