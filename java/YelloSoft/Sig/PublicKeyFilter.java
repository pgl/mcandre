// PublicKeyFilter
// Andrew Pennebaker
// June 12, 2004

import java.io.File;
import javax.swing.filechooser.FileFilter;

public class PublicKeyFilter extends FileFilter {
  // abstract in FileFilter
  public boolean accept(File f) {
    // display all directories
    if (f.isDirectory())
      return true;

    String extension=getExtension(f);
    // check to see if the extension is equal to "pk"
    if (extension.equals("pk"))
      return true;

    return false;
  }

  // abstract in FileFilter
  public String getDescription() {
    return "Public Key Files";
  }

  // get extension of a file (lowercase)
  private String getExtension(File f) {
    String s=f.getName();
    int i=s.lastIndexOf('.');
    if (i>0 && i<s.length()-1)
      return s.substring(i+1).toLowerCase();
    return "";
  }
}
