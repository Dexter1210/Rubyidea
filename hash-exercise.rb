family={
    sisters:["s1","s2","s3"],
    brothers:["b1","b2","b3"],
    uncles:["u1","u2","u3"],
    aunts:["a1","a2","a3"]
}

ifamily_members= family[:brothers]+family[:sisters]

p ifamily_members

imm_fam=family.select do|key,value|
    key==:sisters || key==:brothers
end

p imm_fam.values.flatten