def path_to page_name
  case page_name
    when /the list of people/
      people_path
    when /the homepage/
      root_path
    when /the list of articles/
      articles_path
    else
      raise "Can't find mapping from \"#{page_name}\" to a path."
    end
end
