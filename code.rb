vote_results = []
4.times do |precinct_index|
  vote_results[precinct_index] = []
  3.times do |candidate_index|
    vote_results[precinct_index][candidate_index] = rand(20..500)
  end
end
#above code results in an rondom matrix like below
#[
#precinct 0[1,b,c]
#precinct 1[d,e,f]
#precinct 2[g,h,i]
#precinct 4[j,k,l]
#]

candidates = [
  'Mary Sue',
  'Sally Jane',
  'Billy Joe'
]

#list out vote results
vote_results.each_with_index do |precinct_results, precinct_index|
  puts "**In precinct #{precinct_index + 1}:**"
  candidates.each_with_index do |candidate, candidate_index|
    puts "* #{candidate} got #{vote_results[precinct_index][candidate_index]} votes"
  end
  puts ""
end

#1 How many people voted in precinct 1
print "1 -------------------\n"
precinct1_total=0
vote_results[0].each do |num|
  precinct1_total+=num

end
puts "Total number of votes in precinct 1 is #{precinct1_total}"

print "2 -------------------- \n"
max_votes=0
candidate_name=""
candidates.each do |name|
vote_results[3].each do |num|
  if num>max_votes
    max_votes=num
    candidate_name=name
  end
end
end
puts "#{candidate_name} won in precinct 4 (#{max_votes})"
#how many people voted for mary Sue
print "3---------------------- \n"
 maryVotes=0
vote_results.each do |row|
  maryVotes+=row[0]

end
puts "#{maryVotes} people voted for Mary Sue"
#How many people voted for Billy Joe?
print "4--------------------- \n"
billyVotes=0
vote_results.each do |row|
  billyVotes +=row[1]
end
puts "#{billyVotes} people voted for Billy Joe"

#How many people voted for Sally Jane?
print "5------------------------ \n"
sally_votes=0
vote_results.each do |row|
  sally_votes+=row[2]
end
puts "#{sally_votes} people voted for Sally Jane"
#How many people voted in total?
print "6------------------------ \n"
total_Votes=0
vote_results.each do |num|
  num.each do |total|
    total_Votes+=total
end
end
puts "#{total_Votes} people voted in total"

#Who had the most votes?
print "7------------------------ \n"
if maryVotes>billyVotes && maryVotes>sally_votes
 puts "Mary Sue has more votes (#{maryVotes})"
elsif billyVotes>maryVotes&& billyVotes> sally_votes
 puts "Billy Joe has more votes (#{billyVotes})"
else
 puts "Sally Jane has more votes (#{sally_votes})"
end
