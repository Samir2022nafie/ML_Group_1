import streamlit as st
import tensorflow as tf
import numpy as np
from PIL import Image
import time

st.set_page_config(
    page_title="Flower Species Classifier",
    page_icon="🌸",
    layout="centered"
)

@st.cache_resource
def load_model():

st.title(
    "🌸 Flower Species Classifier"
)

st.markdown(
    "Upload a flower image and let the AI identify its species."
)

st.divider()
    return tf.keras.models.load_model(
        "flower_classifier.keras"
    )

model = load_model()

class_names = [
    "dandelion",
    "daisy",
    "tulips",
    "sunflowers",
    "roses"
]

flower_info = {
    "daisy": "Daisies are known for their white petals and yellow centers.",
    "dandelion": "Dandelions are flowering plants commonly found in grasslands and gardens.",
    "roses": "Roses are popular ornamental flowers with many colors and varieties.",
    "sunflowers": "Sunflowers are famous for their large yellow petals and tendency to follow the sun.",
    "tulips": "Tulips are colorful spring-blooming flowers that originated in Central Asia."
}
