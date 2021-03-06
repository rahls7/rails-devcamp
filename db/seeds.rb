3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    )
end

puts "10 blogs created"

5.times do |skill|
    Skill.create!(
        title:  "Rails #{skill}",
        percent_utilized: 15
    )
end

puts "5 skills created"

8.times do |portfolio_item|
    Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Node",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehend",
    main_image: "https://via.placeholder.com/600x400",
    thumbnail: "https://via.placeholder.com/300x200"
        )
end


1.times do |portfolio_item|
    Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "React",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehend",
    main_image: "https://via.placeholder.com/600x400",
    thumbnail: "https://via.placeholder.com/300x200"
        )
end

3.times do |tech|
    Technology.create!(
        name: "Technology #{tech}",
        portfolio_id: Portfolio.last.id
    )
end
