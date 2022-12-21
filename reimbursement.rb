def calculate_reimbursement(projects)
    reimbursement = 0

    projects = projects.sort_by { |p| p[:start_date]}

    projects.each_with_index do |project, index|
        full_days = (project[:end_date] - project[:start_date] + 1) / 2

        if project[:city] == 'low'
            reimbursement += 45 * 2

            reimbursement += 75 * full_days
        end
    end
end