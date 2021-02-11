
After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')

    if scenario.failed?
        screen_shot(scenario_name.downcase!, 'Failed')
    else
        screen_shot(scenario_name.downcase!, 'Success')
    end
end