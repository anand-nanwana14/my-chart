{{/*
 Helm Chart Helper Template
*/}}

{{- define "mychart.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name }}
{{- end }}

{{- define "mychart.image" -}}
{{- printf "%s:%s" .Values.api.image.repository .Values.api.image.tag }}
{{- end }}

{{- define "mychart.secretName" -}}
{{- printf "%s-api" .Release.Name }}
{{- end }}
