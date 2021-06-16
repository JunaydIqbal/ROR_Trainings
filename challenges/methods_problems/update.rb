h1 = {a: 'a', b: 'b', c: 'c'}
h2 = {a: 1, b: 2, c: 3}
h3 = {a: 2, b: 3, c: 4}

new_hash = {}
new_hash.update(h2, h3) {|key, value1, value2| value1 + value2}
print new_hash