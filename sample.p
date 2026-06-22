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