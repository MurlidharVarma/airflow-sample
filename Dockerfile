FROM apache/airflow:2.2.3

# COPY requirements.txt .

COPY ./dags/my_dag.py /opt/airflow/dags/my_dag.py

# RUN pip install -r requirements.txt