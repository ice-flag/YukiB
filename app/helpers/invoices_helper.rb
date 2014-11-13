module InvoicesHelper

	def run_filter(from)
		if FilterRule.where(:contains => from.to_s).present?
			FilterRule.where(:contains => from.to_s).each do |fr|
				a = BudgetCode.find(fr.budget_code_id).name
				a
			end
		end
	end
end