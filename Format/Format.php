<?php

class Format
{
    public static function ConvertToHTML($data)
    {
        $table = "<thead><tr>";

        // create the table headers
        foreach(array_keys($data[0]) as $index=>$key)
        {
            $table .= "<th>$key</th>";
        }
        $table .= "</tr></thead>";

        // populate rows
        $table .="<tbody>";

        foreach($data as $key=>$row)
        {
            $table .= "<tr>";

            foreach( $row as $index=>$value )
                $table .= "<td>$value</td>";

            $table .= "</tr>";
        }

        $table.= "</tbody>";

        return $table;
    }
}