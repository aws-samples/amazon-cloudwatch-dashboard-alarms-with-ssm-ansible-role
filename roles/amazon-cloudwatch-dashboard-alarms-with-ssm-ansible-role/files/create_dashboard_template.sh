cat > /tmp/cloudwatch_dashboard_template.json <<ABC
{
    "widgets": [
        {
            "height": 3,
            "width": 6,
            "y": 6,
            "x": 3,
            "type": "metric",
            "properties": {
                "view": "timeSeries",
                "stat": "Average",
                "period": 300,
                "stacked": false,
                "yAxis": {
                    "left": {
                        "min": 0
                    }
                },
                "region": "{{aws_region}}",
                "metrics": [
                    [ "AWS/EC2", "CPUUtilization", "InstanceId", "{{instance_id}}", { "label": "{{instance_id}} ({{inventory_hostname}})" } ]
                ],
                "title": "CPU utilization (%)"
            }
        },
        {
            "height": 4,
            "width": 8,
            "y": 1,
            "x": 0,
            "type": "metric",
            "properties": {
                "view": "timeSeries",
                "stat": "Average",
                "period": 300,
                "stacked": false,
                "yAxis": {
                    "left": {
                        "min": 0
                    }
                },
                "region": "{{aws_region}}",
                "metrics": [
                    [ "AWS/EC2", "StatusCheckFailed", "InstanceId", "{{instance_id}}", { "label": "{{instance_id}} ({{inventory_hostname}})" } ]
                ],
                "title": "Status check failed (any) (count)"
            }
        },
        {
            "height": 4,
            "width": 8,
            "y": 1,
            "x": 8,
            "type": "metric",
            "properties": {
                "view": "timeSeries",
                "stat": "Average",
                "period": 300,
                "stacked": false,
                "yAxis": {
                    "left": {
                        "min": 0
                    }
                },
                "region": "{{aws_region}}",
                "metrics": [
                    [ "AWS/EC2", "StatusCheckFailed_Instance", "InstanceId", "{{instance_id}}", { "label": "{{instance_id}} ({{inventory_hostname}})" } ]
                ],
                "title": "Status check failed (instance) (count)"
            }
        },
        {
            "height": 4,
            "width": 8,
            "y": 1,
            "x": 16,
            "type": "metric",
            "properties": {
                "view": "timeSeries",
                "stat": "Average",
                "period": 300,
                "stacked": false,
                "yAxis": {
                    "left": {
                        "min": 0
                    }
                },
                "region": "{{aws_region}}",
                "metrics": [
                    [ "AWS/EC2", "StatusCheckFailed_System", "InstanceId", "{{instance_id}}", { "label": "{{instance_id}} ({{inventory_hostname}})" } ]
                ],
                "title": "Status check failed (system) (count)"
            }
        },
        {
            "height": 4,
            "width": 9,
            "y": 13,
            "x": 0,
            "type": "metric",
            "properties": {
                "view": "timeSeries",
                "stat": "Average",
                "period": 300,
                "stacked": false,
                "yAxis": {
                    "left": {
                        "min": 0
                    }
                },
                "region": "{{aws_region}}",
                "metrics": [
                    [ "AWS/EC2", "NetworkIn", "InstanceId", "{{instance_id}}", { "label": "{{instance_id}} ({{inventory_hostname}})" } ]
                ],
                "title": "Network in (bytes)"
            }
        },
        {
            "height": 5,
            "width": 9,
            "y": 17,
            "x": 0,
            "type": "metric",
            "properties": {
                "view": "timeSeries",
                "stat": "Average",
                "period": 300,
                "stacked": false,
                "yAxis": {
                    "left": {
                        "min": 0
                    }
                },
                "region": "{{aws_region}}",
                "metrics": [
                    [ "AWS/EC2", "NetworkOut", "InstanceId", "{{instance_id}}", { "label": "{{instance_id}} ({{inventory_hostname}})" } ]
                ],
                "title": "Network out (bytes)"
            }
        },
        {
            "height": 4,
            "width": 9,
            "y": 13,
            "x": 9,
            "type": "metric",
            "properties": {
                "view": "timeSeries",
                "stat": "Average",
                "period": 300,
                "stacked": false,
                "yAxis": {
                    "left": {
                        "min": 0
                    }
                },
                "region": "{{aws_region}}",
                "metrics": [
                    [ "AWS/EC2", "NetworkPacketsIn", "InstanceId", "{{instance_id}}", { "label": "{{instance_id}} ({{inventory_hostname}})" } ]
                ],
                "title": "Network packets in (count)"
            }
        },
        {
            "height": 5,
            "width": 9,
            "y": 17,
            "x": 9,
            "type": "metric",
            "properties": {
                "view": "timeSeries",
                "stat": "Average",
                "period": 300,
                "stacked": false,
                "yAxis": {
                    "left": {
                        "min": 0
                    }
                },
                "region": "{{aws_region}}",
                "metrics": [
                    [ "AWS/EC2", "NetworkPacketsOut", "InstanceId", "{{instance_id}}", { "label": "{{instance_id}} ({{inventory_hostname}})" } ]
                ],
                "title": "Network packets out (count)"
            }
        },
        {
            "height": 1,
            "width": 24,
            "y": 0,
            "x": 0,
            "type": "text",
            "properties": {
                "markdown": "# Status  \n"
            }
        },
        {
            "height": 1,
            "width": 24,
            "y": 5,
            "x": 0,
            "type": "text",
            "properties": {
                "markdown": "# CPU utilization\n "
            }
        },
        {
            "height": 3,
            "width": 3,
            "y": 6,
            "x": 0,
            "type": "metric",
            "properties": {
                "view": "singleValue",
                "metrics": [
                    [ "AWS/EC2", "CPUUtilization", "InstanceId", "{{instance_id}}" ]
                ],
                "region": "{{aws_region}}"
            }
        },
        {
            "height": 3,
            "width": 6,
            "y": 9,
            "x": 3,
            "type": "metric",
            "properties": {
                "view": "timeSeries",
                "stacked": false,
                "metrics": [
                    [ "CWAgent", "cpu_usage_iowait", "InstanceId", "{{instance_id}}" ]
                ],
                "region": "{{aws_region}}"
            }
        },
        {
            "height": 1,
            "width": 24,
            "y": 12,
            "x": 0,
            "type": "text",
            "properties": {
                "markdown": "# Network activity\n"
            }
        },
        {
            "height": 1,
            "width": 24,
            "y": 22,
            "x": 0,
            "type": "text",
            "properties": {
                "markdown": "# Memory Utilization\n"
            }
        },
        {
            "height": 4,
            "width": 4,
            "y": 23,
            "x": 0,
            "type": "metric",
            "properties": {
                "view": "singleValue",
                "metrics": [
                    [ "CWAgent", "mem_used_percent", "InstanceId", "{{instance_id}}", "ImageId", "{{ami}}", "InstanceType", "{{instance_type}}" ]
                ],
                "region": "{{aws_region}}"
            }
        },
        {
            "height": 4,
            "width": 8,
            "y": 23,
            "x": 4,
            "type": "metric",
            "properties": {
                "view": "timeSeries",
                "stacked": false,
                "metrics": [
                    [ "CWAgent", "mem_used_percent", "InstanceId", "{{instance_id}}", "ImageId", "{{ami}}", "InstanceType", "{{instance_type}}" ]
                ],
                "region": "{{aws_region}}"
            }
        },
        {
            "height": 4,
            "width": 4,
            "y": 23,
            "x": 12,
            "type": "metric",
            "properties": {
                "view": "singleValue",
                "metrics": [
                    [ "CWAgent", "swap_used_percent", "InstanceId", "{{instance_id}}", "ImageId", "{{ami}}", "InstanceType", "{{instance_type}}" ]
                ],
                "region": "{{aws_region}}"
            }
        },
        {
            "height": 4,
            "width": 8,
            "y": 23,
            "x": 16,
            "type": "metric",
            "properties": {
                "view": "timeSeries",
                "stacked": false,
                "metrics": [
                    [ "CWAgent", "swap_used_percent", "InstanceId", "{{instance_id}}", "ImageId", "{{ami}}", "InstanceType", "{{instance_type}}" ]
                ],
                "region": "{{aws_region}}"
            }
        },
        {
            "height": 9,
            "width": 6,
            "y": 13,
            "x": 18,
            "type": "metric",
            "properties": {
                "view": "timeSeries",
                "stacked": false,
                "metrics": [
                    [ "CWAgent", "ethtool_linklocal_allowance_exceeded", "driver", "ena", "InstanceId", "{{instance_id}}", "ImageId", "{{ami}}", "InstanceType", "{{instance_type}}", "interface", "eth0" ],
                    [ ".", "ethtool_bw_in_allowance_exceeded", ".", ".", ".", ".", ".", ".", ".", ".", ".", "." ],
                    [ ".", "ethtool_conntrack_allowance_exceeded", ".", ".", ".", ".", ".", ".", ".", ".", ".", "." ],
                    [ ".", "ethtool_pps_allowance_exceeded", ".", ".", ".", ".", ".", ".", ".", ".", ".", "." ],
                    [ ".", "ethtool_bw_out_allowance_exceeded", ".", ".", ".", ".", ".", ".", ".", ".", ".", "." ]
                ],
                "region": "{{aws_region}}",
                "title": "Netwrok Packet Shaped and Dropped"
            }
        },
        {
            "height": 7,
            "width": 24,
            "y": 36,
            "x": 0,
            "type": "metric",
            "properties": {
                "metrics": [
ABC
for y in `LANG=UTF-8 lsblk -f |grep "/" |sed 's/\`//g;s/-//g'|awk '{print $1}'|awk '{print $1}'` 
do
cat  >> /tmp/cloudwatch_dashboard_template.json <<ABC
					[ "CWAgent", "disk_used_percent", "path", "`df -h |grep $y|awk '{print $NF}'`", "InstanceId", "{{instance_id}}", "ImageId", "{{ami}}", "InstanceType", "{{instance_type}}", "device", "$y", "fstype", "`LANG=UTF-8 lsblk -f |grep $y |awk '{print $2}'`" ],
ABC
done
cat  >> /tmp/cloudwatch_dashboard_template.json <<ABC
                    [ "...", "/dev", ".", ".", ".", ".", ".", ".", ".", "devtmpfs", ".", "devtmpfs" ]
                ],
                "view": "timeSeries",
                "stacked": false,
                "region": "{{aws_region}}",
                "period": 300
            }
        },
        {
            "height": 1,
            "width": 24,
            "y": 35,
            "x": 0,
            "type": "text",
            "properties": {
                "markdown": "# Disk Usage\n"
            }
        }
    ]
}
ABC