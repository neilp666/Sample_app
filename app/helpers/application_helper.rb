module ApplicationHelper

  #returns the full title on a per-page basis.
  def full_title(page_title = '') # Method def, optional arg
    base_title = "Ruby on Rails Tutorial Sample App" # Variable assignment
      if page_title.empty? #Boolean Test
        base_title
      else
        page_title + " | " + base_title # String concatenation
      end
  end
end
