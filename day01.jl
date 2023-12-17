### A Pluto.jl notebook ###
# v0.16.1

using Markdown
using InteractiveUtils

# ╔═╡ 0a0064f1-b0dd-483c-b9cb-634e7c540055
md"""
# Day 1
"""

# ╔═╡ 79ad6b22-9c91-11ee-07c0-fb68a04ef054
begin
	total = open("input/d01p1.txt") do f
		total = 0
		while !eof(f)
			s = readline(f)
			start = match(r"^\D*(\d)", s)[1]
			final = match(r"(\d)\D*$", s)[1]
			total += parse(Int, start) * 10 + parse(Int, final)
		end
		return total
	end
	md"""
	## Part 1
	$total
	"""
end

# ╔═╡ d3305cb1-2e30-406e-97d9-5a650ab1a1c1
function word2num(s) 
	s == "zero" && return 0
	s == "one" && return 1
	s == "two" && return 2
	s == "three" && return 3
	s == "four" && return 4
	s == "five" && return 5
	s == "six" && return 6
	s == "seven" && return 7
	s == "eight" && return 8
	s == "nine" && return 9
	return parse(Int, s)
end	

# ╔═╡ 5dd9fc3a-fab2-4370-8efd-42bc2215a9d5
begin
	local NUM_REGEX = r"\d|zero|one|two|three|four|five|six|seven|eight|nine"
	local total = open("input/d01p1.txt") do f
		total = 0
		while !eof(f)
			matches = collect(eachmatch(NUM_REGEX, readline(f), overlap=true))
			total += word2num(matches[1].match) * 10 + word2num(last(matches).match)
		end
		return total
	end
	md"""
	## Part 2
	$total
	"""
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.0-rc1"
manifest_format = "2.0"

[deps]
"""

# ╔═╡ Cell order:
# ╟─0a0064f1-b0dd-483c-b9cb-634e7c540055
# ╟─79ad6b22-9c91-11ee-07c0-fb68a04ef054
# ╟─d3305cb1-2e30-406e-97d9-5a650ab1a1c1
# ╟─5dd9fc3a-fab2-4370-8efd-42bc2215a9d5
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
