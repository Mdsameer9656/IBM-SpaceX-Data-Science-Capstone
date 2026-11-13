import pandas as pd
from dash import Dash, dcc, html, Input, Output
import plotly.express as px
df=pd.read_csv('spaceX_analysis_90_launches.csv')
app=Dash(__name__)
app.layout=html.Div([html.H1('SpaceX first-stage recovery dashboard'),dcc.Dropdown(['ALL']+sorted(df.LaunchSite.unique()),'ALL',id='site'),dcc.RangeSlider(df.PayloadMass.min(),df.PayloadMass.max(),value=[df.PayloadMass.min(),df.PayloadMass.max()],id='payload'),dcc.Graph(id='pie'),dcc.Graph(id='scatter')])
@app.callback(Output('pie','figure'),Output('scatter','figure'),Input('site','value'),Input('payload','value'))
def update(site,pr):
 d=df[(df.PayloadMass>=pr[0])&(df.PayloadMass<=pr[1])];d=d if site=='ALL' else d[d.LaunchSite==site]
 return px.pie(d,names='Class',title='Recovery outcomes'),px.scatter(d,x='PayloadMass',y='LaunchSite',color=d.Class.astype(str),title='Payload vs. recovery')
if __name__=='__main__':app.run(debug=True)
