#Problem 1: find the item with multiple objects


item = {
    name: "Cake",
    nested1: {
      feature: [
        {id: "1", type: "t1"},
        {id: "2", type: "t2"},
        {id: "3", type: "t3"},
        {id: "4", type: "t4"}
      ]
    },
    nested2: [
      {id: "1", type: "t1"},
      {id: "2", type: "t2"},
      {id: "3", type: "t3"},
      {id: "4", type: "t4"},
      {id: "5", type: "t5"},
      {id: "6", type: "t6"},
      {id: "7", type: "t7"}
    ]
  }


print item.dig(:nested1, :feature, 3, :type)