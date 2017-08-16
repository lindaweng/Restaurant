# class Restaurant 
#     attr_accessor :budget, :total, :items
#     def initialize(budget)
#         @budget = budget
#         @total = 0
#         @items = {}
#         @receipt = ""



def returnMenu(budget)
  

menu = {
    :appetizer => {
        :kimchi => 1.00,
        :dumpling => 0.50,
        :miso_soup => 1.00,
        :rice_ball => 0.30,
        :bowl_of_edamame => 2.00,
        :spring_roll => 0.30,
        :dimsum => 3.00,
        :takoyaki => 5.00
    },
    
    :main => {
        :spicy_chicken_ramen => 8.00,
        :pad_thai => 5.00,
        :pho => 10.00,
        :fried_rice => 7.00,
        :sashimi => 2.00,
        :sushi_roll => 9.00,
        :bibimbap => 10.00
    },
    
    :dessert => {
        :ice_cream_scoop => {
            :vanilla => 2.00,
            :chocolate => 2.00,
            :strawberry => 2.00
        },
        :mochi_ice_cream => 1.00,
        :egg_tart => 0.80,
        :sweet_green_bean_soup => 2.00,
        :eggette => 4.00,
        :cookie => 0.50
    },
    
    :drinks => {
        :bubble_tea => 4.00,
        :tea => 0.50,
        :water => 0.00,
        :juice => {
            :orange => 1.00,
            :apple => 1.00,
        },
        :soda => 1.50,
        :coffee => 2.00
    }
}
  return menu
end
#     end
    
# end
    
    
    
    # def menu()
    #     @menu.each do |course, itemHash|
    #     puts "
    #     #{course.upcase}"
    #     itemHash.each do |item, price|
    #         if price.class == Hash
    #             puts "#{item.to_s.gsub("_", " ").capitalize}:"
    #             price.each do |item1, price1|
    #                 if budget >= price1
    #                     item1 = item1.to_s.gsub("_", " ")
    #                     printf("    %s: $%.2f\n", item1.capitalize, price1)
    #                 end
    #             end
    #         else
    #             if budget >= price
    #                 item = item.to_s.gsub("_", " ")
    #                 printf("%s: $%.2f\n", item.capitalize, price)
    #             end
    #         end
    #     end
    # end
        
    # end
    # def buy()
    #     puts "\nWhat course do you want?"
    #     course = gets.chomp.downcase.to_sym
    #     while @menu.key?(course) == false
    #         puts "Please enter a valid course name."
    #         puts "\nWhat course do you want?"
    #         course = gets.chomp.downcase.to_sym
    #     end
    #     @menu[course].each do |item, price|
    #         if price.class == Hash
    #             puts "#{item.to_s.gsub("_", " ").capitalize}:"
    #             price.each do |item1, price1|
    #                 if budget >= price1
    #                     item1 = item1.to_s.gsub("_", " ")
    #                     printf("    %s: %.2f\n", item1.capitalize, price1)
    #                 end
    #             end
    #         else
    #             if budget >= price
    #                 item = item.to_s.gsub("_", " ")
    #                 printf("%s: %.2f\n", item.capitalize, price)
    #             end
    #         end
    #     end
    #     puts "\nWhat item do you want?"
    #     item = gets.chomp.downcase
    #     updateItem = item.gsub(" ", "_").to_sym
    #     while @menu[course].key?(updateItem) == false
    #         puts "Please enter a valid item name."
    #         puts "\nWhat item do you want?"
    #         item = gets.chomp.downcase
    #         updateItem = item.gsub(" ", "_").to_sym
    #     end
    #     if @menu[course][updateItem].class == Hash
    #         puts "\nWhat type of #{item} do you want?"
    #         type = gets.chomp.downcase
    #         updateType = type.gsub(" ", "_").to_sym
    #         while @menu[course][updateItem].key?(updateType) == false
    #             puts "Please enter a valid item name."
    #             puts "\nWhat type of #{item} do you want?"
    #             type = gets.chomp.downcase
    #             updateType = type.gsub(" ", "_").to_sym
    #         end
    #         price = @menu[course][updateItem][updateType]
    #         puts "\nHow many #{type} #{item}(s) would you like?"
    #         quantity = gets.chomp.to_i
    #         while quantity * price > @budget
    #             max = @budget/price
    #             puts "The maximum number of #{type} #{item}(s) you can buy is #{max}."
    #             puts "\nHow many #{type} #{item} would you like?"
    #             quantity = gets.chomp.to_i
    #         end
    #         @items[(quantity.to_s + "*" + type + "_" + item).to_sym] = price * quantity
    #     else
    #         price = @menu[course][updateItem]
    #         puts "\nHow many #{item}(s) would you like?"
    #         quantity = gets.chomp.to_i
    #         while quantity.zero? == true
    #             puts "Please enter a number."
    #             puts "\nHow many of #{item} would you like?"
    #             quantity = gets.chomp.to_i
    #         end
    #         while quantity * price > @budget
    #             max = @budget/price
    #             puts "The maximum number of #{type} #{item}(s) you can buy is #{max}."
    #             puts "\nHow many #{item} would you like?"
    #             quantity = gets.chomp.to_i
    #         end
    #         @items[(quantity.to_s + "*" + item).to_sym] = price * quantity
    #     end
    #     @total += price * quantity
    #     @budget -= price * quantity
    #     printf("\nYour total is $%.2f, and your budget is now $%.2f\n", @total, @budget)
    #     puts "You have bought: #{@items.keys.join("(s), ").gsub("*", " ").gsub("_", " ")}(s)"
    # end
    # def receipt()
    #     # @receipt = File.open("receipt.txt", "w")
    #     # @receipt.puts("Your Receipt\nItems:\n")
    #     # @items.each do |item, price|
    #     #     @receipt.printf("%s         $%.2f\n", item.to_s.gsub("*", " * "), price)
    #     # end
    #     # @receipt.printf("\nTotal: $%.2f", @total)
    #     # @receipt.printf("\nChange: $%.2f", @budget)
    #     # @receipt.close
    #     # @receipt = File.open("receipt.txt", "r")
    #     # puts @receipt.readlines
    #     rows = []
    #     table = Terminal::Table.new
    #     table.title = "Your Receipt"
    #     @items.each do |item, price|
	   #     rows << [item.to_s.gsub("*", " * "), '%.2f' % price]
    # 	end
    # 	rows << [" ", " "]
    # 	rows << ["Total:", "$" + '%.2f' % @total]
    # 	rows << ["Change: ", "$" + '%.2f' % @budget]
    # 	table.rows = rows
    # 	table.style.border_x = " "
    # 	table.style.border_y = " "
    # 	table.style.border_i = " "
    # 	table.style = {:all_separators => false}
    # 	table.style = {:width => 40}
    # 	puts table
    # end
