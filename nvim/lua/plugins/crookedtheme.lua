return {
    {
        'ethan-heimer/crookedtheme',
         branch = '4.1',
         config = function()
            local crooked = require("crookedtheme")
            local crookedpastel = require("crookedpastel")
            local crookedslick = require("crookedslick")
            local crookedteeth = require("crookedteeth")

            crooked.AddTheme(crookedpastel.pastel)
            crooked.AddTheme(crookedpastel.pastelLight)
            crooked.AddTheme(crookedpastel.pastelNight)
            crooked.AddTheme(crookedslick)
            crooked.AddTheme(crookedteeth)

            crooked.Apply(crookedteeth);
         end
    },
    {
        'ethan-heimer/crookedpastel',
    },
    {
        'ethan-heimer/crookedslick'
    },
    {
        'ethan-heimer/crookedteeth'
    }
}
