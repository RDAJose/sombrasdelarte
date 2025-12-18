(: a :) /visitas/visita[conversionRate < 1.0]

(: b :) count(/visitas/visita[sessionDuration > 10])

(: c :) /visitas/visita[pageViews > 8]/conversionRate

(: d :) /visitas/visita[not(sessionDuration < ../visita/sessionDuration)]

(: e :) /visitas/visita[trafficSource = 'Social' and pageViews > 5]/timeOnPage

(: f :) avg(/visitas/visita[trafficSource = 'Organic']/sessionDuration)
