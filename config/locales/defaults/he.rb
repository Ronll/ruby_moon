{
    :he=> {
        :date => {
            # In russian month name with day and standalone day are different ### I copied this for hebrew for testing
            :month_names => lambda { |key, options|
              if options[:format] && options[:format] =~ /%-?d %B/
                :'date.month_names_with_day'
              else
                :'date.month_names_standalone'
              end
            }
        }
    }
}
