class FilterRulesController < ApplicationController
  # GET /filter_rules
  # GET /filter_rules.json
  def index
    @filter_rules = FilterRule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @filter_rules }
    end
  end

  # GET /filter_rules/1
  # GET /filter_rules/1.json
  def show
    @filter_rule = FilterRule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @filter_rule }
    end
  end

  # GET /filter_rules/new
  # GET /filter_rules/new.json
  def new
    @filter_rule = FilterRule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @filter_rule }
    end
  end

  # GET /filter_rules/1/edit
  def edit
    @filter_rule = FilterRule.find(params[:id])
  end

  # POST /filter_rules
  # POST /filter_rules.json
  def create
    @filter_rule = FilterRule.new(params[:filter_rule])

    respond_to do |format|
      if @filter_rule.save
        format.html { redirect_to @filter_rule, notice: 'Filter rule was successfully created.' }
        format.json { render json: @filter_rule, status: :created, location: @filter_rule }
      else
        format.html { render action: "new" }
        format.json { render json: @filter_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /filter_rules/1
  # PUT /filter_rules/1.json
  def update
    @filter_rule = FilterRule.find(params[:id])

    respond_to do |format|
      if @filter_rule.update_attributes(params[:filter_rule])
        format.html { redirect_to @filter_rule, notice: 'Filter rule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @filter_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filter_rules/1
  # DELETE /filter_rules/1.json
  def destroy
    @filter_rule = FilterRule.find(params[:id])
    @filter_rule.destroy

    respond_to do |format|
      format.html { redirect_to filter_rules_url }
      format.json { head :no_content }
    end
  end
end
