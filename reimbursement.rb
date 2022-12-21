def calculate_reimbursement(projects)
    reimbursement = 0

    projects = projects.sort_by { |p| p[:start_date]}

    projects.each_with_index do |project, index|
        full_days = (project[:end_date] - project[:start_date] + 1) / 2

        if project[:city] == 'low'
            reimbursement += 45 * 2
            reimbursement += 75 * full_days

        else
            reimbursement += 55 * 2
            reimbursement += 85 * full_days
        end

        if index < projects.length - 1 && (project[:end_date] + 1) < projects[index + 1][:start_date]
            travel_days = (projects[index + 1][:start_date] - project[:end_date] -1)
        end
    end
end