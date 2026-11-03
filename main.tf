resource "google_bigquery_dataset" "abcd" {
dataset_id = "my-id"
}

resource "google_bigquery_table" "tab" {
table_id = "this-tab"
dataset_id = google_bigquery_dataset.abcd.id
}