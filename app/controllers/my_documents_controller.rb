class MyDocumentsController < ApplicationController
  before_action :set_my_document, only: [:show, :update, :destroy]

  # GET /my_documents
  def index
    @my_documents = MyDocument.all

    render json: @my_documents
  end

  # GET /my_documents/1
  def show
    render json: @my_document
  end

  # POST /my_documents
  def create
    @my_document = MyDocument.new(my_document_params)

    if @my_document.save
      render json: @my_document, status: :created, location: @my_document
    else
      render json: @my_document.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /my_documents/1
  def update
    if @my_document.update(my_document_params)
      render json: @my_document
    else
      render json: @my_document.errors, status: :unprocessable_entity
    end
  end

  # DELETE /my_documents/1
  def destroy
    @my_document.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_document
      @my_document = MyDocument.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def my_document_params
      params.require(:my_document).permit(:title, :description, :file_url, :image_url)
    end
end
