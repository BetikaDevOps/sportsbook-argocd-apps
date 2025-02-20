{{- define "sportsbook.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "sportsbook.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "sportsbook.labels" -}}
app: {{ .Values.appName }}
release: {{ .Release.Name }}
helm.sh/chart: {{ include "sportsbook.chart" . }}
{{ include "sportsbook.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "sportsbook.selectorLabels" -}}
app.kubernetes.io/name: {{ include "sportsbook.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}


