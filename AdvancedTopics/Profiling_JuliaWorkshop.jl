using Profile

Profile.clear()

using Statistics
function randmsq()
    x = rand(10000, 1000)
    y = mean(x.^2, dims=1)
    return y
end

@profile randmsq()
Profile.print()

using  ProfileView
ProfileView.view()