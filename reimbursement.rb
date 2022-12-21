def calculate_reimbursement(projects)
    reimbursement = 0

    projects = projects.sort_by { |p| p[:start_date]}

    projects.each_with_index do |project, index|
        full_days = (project[:end_date] - project[:start_date] + 1) / 2
    end
end