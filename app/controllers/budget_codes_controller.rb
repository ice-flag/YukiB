class BudgetCodesController < ApplicationController
  # GET /budget_codes
  # GET /budget_codes.json
  def index
    @budget_codes = BudgetCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @budget_codes }
    end
  end

  # GET /budget_codes/1
  # GET /budget_codes/1.json
  def show
    @budget_code = BudgetCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @budget_code }
    end
  end

  # GET /budget_codes/new
  # GET /budget_codes/new.json
  def new
    @budget_code = BudgetCode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @budget_code }
    end
  end

  # GET /budget_codes/1/edit
  def edit
    @budget_code = BudgetCode.find(params[:id])
  end

  # POST /budget_codes
  # POST /budget_codes.json
  def create
    @budget_code = BudgetCode.new(params[:budget_code])

    respond_to do |format|
      if @budget_code.save
        format.html { redirect_to @budget_code, notice: 'Budget code was successfully created.' }
        format.json { render json: @budget_code, status: :created, location: @budget_code }
      else
        format.html { render action: "new" }
        format.json { render json: @budget_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /budget_codes/1
  # PUT /budget_codes/1.json
  def update
    @budget_code = BudgetCode.find(params[:id])

    respond_to do |format|
      if @budget_code.update_attributes(params[:budget_code])
        format.html { redirect_to @budget_code, notice: 'Budget code was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @budget_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budget_codes/1
  # DELETE /budget_codes/1.json
  def destroy
    @budget_code = BudgetCode.find(params[:id])
    @budget_code.destroy

    respond_to do |format|
      format.html { redirect_to budget_codes_url }
      format.json { head :no_content }
    end
  end
end
