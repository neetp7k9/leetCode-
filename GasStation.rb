# @param {Integer[]} gas

# @param {Integer[]} cost
# @return {Integer}
def can_complete_circuit(gas, cost)
    return -1 if gas.inject(0){|sum,g|sum+=g} < cost.inject(0){|sum,c|sum+=c}
    tank = 0
    start = 0
    0.upto(gas.size-1) do |i|
        start = i if tank < 0 
        tank = 0 if tank < 0
        tank += gas[i]-cost[i]
    end
    return start
end
