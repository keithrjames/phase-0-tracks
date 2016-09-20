the_mind = {
    id: {
        psyc_name: 'Id',
        dreams: {
            good: 5,
            bad: 10
        },
        needs: [
            "Food",
            "Shelter"
        ]
    },
    ego: {
        psyc_name: 'Ego',
        dreams: {
            good: 12,
            bad: 7
        },
        needs: [
            "Family",
            "Comfort"
        ]
    },
    super_ego: {
        psyc_name: 'Super Ego',
        dreams: {
            good: 24,
            bad: 15
        },
        needs: [
            "Belonging",
            "Purpose"
        ]
    }
}

########## test

puts the_mind[:super_ego][:needs].count
puts the_mind[:ego][:needs].push('wifi')
puts the_mind[:id][:dreams][:good] = 15
puts the_mind